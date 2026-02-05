const express = require('express');
const cors = require('cors');
const { OpenAI } = require('openai');
const { Client } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const app = express();
const port = 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Initialize OpenAI
const openai = new OpenAI({
    apiKey: process.env.OPENAI_API_KEY,
});

// Initialize Database Client
// We will connect lazily or per request to handle errors gracefully if DB is not set up
const getDbClient = () => {
    if (!process.env.DATABASE_URL || process.env.DATABASE_URL.includes('randompassword')) {
        return null;
    }
    const client = new Client({
        connectionString: process.env.DATABASE_URL,
    });
    return client;
};

// Load Schema
const schemaPath = path.join(__dirname, 'schema.sql');
let schemaContext = '';
try {
    schemaContext = fs.readFileSync(schemaPath, 'utf8');
    // Limit schema context if it's too large for token limits (basic truncation)
    // For this demo, we'll assume it fits or rely on newer models' context window
    console.log('Schema loaded successfully');
} catch (err) {
    console.error('Error reading schema.sql:', err);
    schemaContext = 'Error loading schema.';
}

const SYSTEM_PROMPT_TEMPLATE = `
You are a SQL Expert for an Organization's database.
The Architecture: "The SQL Sandbox"

To keep the Organization's data safe, you should follow this flow:
1. Receive Question: User types natural language query.
2. Return ONLY the SQL code: SELECT count(*) FROM projects...

Read-Only: Only generate SELECT queries. Never generate INSERT, UPDATE, DELETE, or DROP.

Context:
{SCHEMA_CONTEXT}

Formatting: Return the SQL query inside a markdown code block (optional, but if used, I will strip it).

Safe Handling: If the user's question is ambiguous, choose the most logical join based on the Foreign Keys provided in the schema.

SQL Flavor: Use valid PostgreSQL syntax only.
Security: Only generate SELECT statements. If the user asks to "delete," "update," or "change" anything, politely refuse and explain you are in read-only mode.
Ambiguity: If a user's question (e.g., "Show me late projects") is ambiguous, check the schema for date columns like end_date or deadline and compare them to CURRENT_DATE.
Joins: Always use explicit JOIN syntax. Use the Foreign Keys defined in the schema to link tables.
Output Format: Return ONLY the raw SQL code. Do not include any conversational text, explanations, or markdown formatting (no backticks) in the initial response. Just the SELECT statement.
`;

const HUMANIZER_SYSTEM_PROMPT = `
You are a helpful data analyst for the Organization.
Receive a user question and the raw JSON data result from the database.
Format the final answer professionally and concisely.
IMPORTANT: Reply in the SAME LANGUAGE as the User's Question. If they ask in Arabic, reply in Arabic.
For Arabic responses, ALWAYS start the sentence with "الاجابة: " instead of "Answer: ".
Example: "الاجابة: يوجد 4 مشاريع متأخرة حالياً."
`;

app.post('/api/chat', async (req, res) => {
    const { message } = req.body;

    if (!message) {
        return res.status(400).json({ error: 'Message is required' });
    }

    try {
        console.log('Received question:', message);

        // Step 1: Generate SQL
        const systemPrompt = SYSTEM_PROMPT_TEMPLATE.replace('{SCHEMA_CONTEXT}', schemaContext);

        let sqlCompletion;
        try {
            sqlCompletion = await openai.chat.completions.create({
                model: "gpt-4-turbo-preview", // Or gpt-3.5-turbo if cost is a concern, but 4 is better for SQL
                messages: [
                    { role: "system", content: systemPrompt },
                    { role: "user", content: message },
                ],
                temperature: 0,
            });
        } catch (openaiError) {
            console.error("OpenAI API Error (SQL Generation):", openaiError);
            return res.status(500).json({ error: "Failed to communicate with AI service." });
        }

        let generatedSql = sqlCompletion.choices[0].message.content.trim();
        console.log('Raw AI Response:', generatedSql);

        // Improved Parsing Logic
        // 1. Try to extract from markdown code blocks first
        const codeBlockMatch = generatedSql.match(/```(?:sql)?\s*([\s\S]*?)\s*```/i);
        if (codeBlockMatch) {
            generatedSql = codeBlockMatch[1].trim();
        } else {
            // 2. If no code block, try to find the first SELECT statement
            const selectIndex = generatedSql.toUpperCase().indexOf('SELECT');
            if (selectIndex !== -1) {
                generatedSql = generatedSql.substring(selectIndex).trim();
            }
        }

        // Remove ANY remaining backticks just in case
        generatedSql = generatedSql.replace(/`/g, '');

        console.log('Parsed SQL:', generatedSql);

        // Step 2: Sanitize
        const upperSql = generatedSql.toUpperCase();
        if (!upperSql.startsWith('SELECT') && !upperSql.startsWith('WITH')) {
            console.error('Unsafe query blocked:', generatedSql);
            return res.status(400).json({
                error: "Unauthorized query type generated or AI refusal.",
                sql: generatedSql
            });
        }

        // Step 3: Execute SQL
        let queryRows = [];
        const dbClient = getDbClient();

        if (dbClient) {
            try {
                await dbClient.connect();
                const result = await dbClient.query(generatedSql);
                queryRows = result.rows;
                await dbClient.end();
            } catch (dbError) {
                console.error("Database Error:", dbError);
                if (dbClient) await dbClient.end();
                return res.status(500).json({ error: "Database execution failed.", details: dbError.message, sql: generatedSql });
            }
        } else {
            console.warn("No valid DATABASE_URL found. Mocking execution.");
            // Mock Data for demonstration if DB not configured
            queryRows = [
                { id: 1, name: "Mock Project Alpha", status: "Over Budget" },
                { id: 2, name: "Mock Project Beta", status: "On Time" }
            ];
        }

        console.log('Query Result Rows:', queryRows.length);

        // Step 4: Humanize
        let humanizedAnswer = "";
        try {
            const humanizeCompletion = await openai.chat.completions.create({
                model: "gpt-3.5-turbo",
                messages: [
                    { role: "system", content: HUMANIZER_SYSTEM_PROMPT },
                    { role: "user", content: `Question: ${message}\nData: ${JSON.stringify(queryRows)}` },
                ],
            });
            humanizedAnswer = humanizeCompletion.choices[0].message.content;
        } catch (openaiError) {
            console.warn("OpenAI API Error (Humanizer):", openaiError);
            humanizedAnswer = "Here are the results (AI summary failed): " + JSON.stringify(queryRows);
        }

        // Return Result
        res.json({
            answer: humanizedAnswer,
            sql: generatedSql,
            data: queryRows
        });

    } catch (error) {
        console.error('Server Error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
