-- SQL Data Engineering Foundations
-- Dataset: Synthetic retail banking data
--
-- Skills demonstrated:
-- SELECT
-- WHERE
-- ORDER BY
-- GROUP BY
-- COUNT
-- SUM
-- AVG
-- aliases
-- basic data validation
--
-- ============================================
-- 1. INITIAL DATA VALIDATION
-- ============================================
--
-- ============================================
-- BUSINESS QUESTION 1
-- How many customers are in the dataset?
-- ============================================
SELECT COUNT(*) AS total_customers
FROM customers;
--
-- ============================================
-- BUSINESS QUESTION 2
-- How many branches are in the dataset?
-- ============================================
SELECT COUNT(*) AS total_branches
FROM branches;
--
-- ============================================
-- BUSINESS QUESTION 3
-- How many accounts are in the dataset?
-- ============================================
SELECT COUNT(*) AS total_accounts
FROM accounts;
--
-- ============================================
-- BUSINESS QUESTION 4
-- How many transactions are in the dataset?
-- ============================================
SELECT COUNT(*) AS total_transactions
FROM transactions;
--
-- ============================================
-- BUSINESS QUESTION 5
-- What is the total transaction value in the dataset?
-- ============================================
SELECT SUM(amount) AS total_transaction_value
FROM transactions;
--
-- ============================================
-- BUSINESS QUESTION 6
-- What is the average transaction value in the dataset?
-- ============================================
SELECT AVG(amount) AS average_transaction_value
FROM transactions;
--
=============================================
-- BUSINESS QUESTION 7
-- What is the total transaction value by transaction type?
-- ============================================
SELECT transaction_type, SUM(amount) AS total_transaction_value
FROM transactions
GROUP BY transaction_type
ORDER BY total_transaction_value DESC;
--
============================================
-- BUSINESS QUESTION 8
-- How many transactions exist by transaction type?
-- ============================================
SELECT transaction_type, COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_type
ORDER BY total_transactions DESC;   
--
============================================
-- BUSINESS QUESTION 9
-- How many transactions exceeded R10,000 in value?
-- ============================================
SELECT * AS transactions_over_10000
FROM transactions
WHERE amount > 10000
ORDER BY amount DESC;   
--
============================================
-- BUSINESS QUESTION 10
-- How many customers belong to each customer segment?
-- ============================================
SELECT customer_segment, COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment;
--
============================================
-- BUSINESS QUESTION 11
-- What is the total account balance by account type?
-- ============================================
SELECT account_type, SUM(balance) AS total_account_balance
FROM accounts
GROUP BY account_type
ORDER BY total_account_balance DESC;
--
-- ============================================
-- BASIC DATA QUALITY CHECKS
-- Are any transaction amounts null?
-- ============================================
SELECT COUNT(*) AS null_transaction_amounts
FROM transactions
WHERE amount IS NULL;
-- 
============================================
-- Are any account balances null?
-- ============================================
SELECT COUNT(*) AS null_account_balances
FROM accounts
WHERE balance IS NULL;  
--
============================================
-- Are any customer segments null?
-- ============================================
SELECT COUNT(*) AS null_customer_segments
FROM customers
WHERE customer_segment IS NULL;     
--
============================================
-- What customer segments exist in the dataset?
-- ============================================
SELECT DISTINCT customer_segment
FROM customers;
--
============================================
-- What account types exist in the dataset?
-- ============================================
SELECT DISTINCT account_type
FROM accounts;  
--
============================================
-- What transaction types exist in the dataset?
-- ============================================
SELECT DISTINCT transaction_type
FROM transactions;  
