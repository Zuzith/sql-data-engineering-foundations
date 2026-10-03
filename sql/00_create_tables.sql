-- SQL Data Engineering Foundations
-- Initial raw table definitions
-- Month 1 version

CREATE TABLE customers (
    customer_id INTEGER,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    province VARCHAR(50),
    join_date DATE,
    customer_segment VARCHAR(30)
);

CREATE TABLE branches (
    branch_id INTEGER,
    branch_name VARCHAR(100),
    province VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE accounts (
    account_id INTEGER,
    customer_id INTEGER,
    branch_id INTEGER,
    account_type VARCHAR(30),
    open_date DATE,
    account_status VARCHAR(30),
    balance NUMERIC(12,2)
);

CREATE TABLE transactions (
    transaction_id INTEGER,
    account_id INTEGER,
    transaction_date DATE,
    transaction_type VARCHAR(30),
    amount NUMERIC(12,2),
    channel VARCHAR(30),
    merchant_category VARCHAR(50)
);