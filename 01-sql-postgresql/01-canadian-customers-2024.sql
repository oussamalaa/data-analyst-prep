-- Problem: List all Canadian customers who signed up in 2024.
--          Return name, email, and signup date, sorted newest first.
-- Source: Practice problem (Week 1, Day 1)
-- Date: 2026-06-26
-- Concepts: SELECT, WHERE, AND, ORDER BY, date filtering

SELECT
    name,
    email,
    signup_date
FROM customers
WHERE country = 'Canada'
  AND signup_date >= '2024-01-01'
  AND signup_date <= '2024-12-31'
ORDER BY signup_date DESC;

-- Notes:
-- Use date range (>= and <=) instead of EXTRACT(YEAR FROM signup_date) = 2024
-- because range comparisons can use an index, making the query faster on large tables.
-- DESC on signup_date gives newest customers first.