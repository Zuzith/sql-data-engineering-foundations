# Data Dictionary

## customers

| Column | Description |
|---|---|
| customer_id | Unique identifier for each customer |
| first_name | Synthetic customer first name |
| last_name | Synthetic customer surname |
| province | South African province |
| join_date | Date the customer joined |
| customer_segment | Fictional banking customer segment |

## accounts

| Column | Description |
|---|---|
| account_id | Unique account identifier |
| customer_id | References customers.customer_id |
| branch_id | References branches.branch_id |
| account_type | Type of banking account |
| open_date | Date account was opened |
| account_status | Current account status |
| balance | Synthetic account balance |

## branches

| Column | Description |
| --- | --- |
| branch_id | References branches.branch_id |
| branch_name | Synthetic branch name using provinces |
| province | South Afrrican province |
| city | South African cities |

## transactions

| Column| Description|
|---|---|
| transaction_id | Unique identifier for each transaction|
| account_id| References accounts.account_id|
| transaction_date | Date the transaction occurred (MM/DD/YYYY format in your sample)|
| transaction_type | Type of transaction (e.g., Transfer, ATM, Debit)|
| amount| Transaction amount (numeric value)|
| channel | Channel through which the transaction was made (e.g., Branch, Mobile, Web)|
| merchant_category | Category of merchant or purpose of transaction (e.g., Groceries, Utilities)|
