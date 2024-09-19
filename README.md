# Risk Analysis

Fraud Detection in Banking Using SQL
This project demonstrates how SQL can be used to detect various forms of potential fraud in the banking sector. It focuses on identifying unusual patterns in customer transactions, loan payments, and credit card activity, which may signal fraudulent behavior. The project leverages several SQL queries that analyze customer and transaction data stored in a relational database. The database includes information about accounts, loans, credit card transactions, and branch locations.

**Key Features of the Project:**
Unusually Large Transactions Detection: Identifies single transactions that exceed a predefined threshold (e.g., $10,000), which may indicate fraudulent or suspicious behavior.

Multiple Large Transactions in a Short Timeframe: Detects accounts with several large transactions within a brief period (e.g., more than 3 transactions over $10,000 within 7 days), which could suggest attempts to launder money or manipulate account balances.

Inconsistent Loan Payments: Highlights cases where large loan payments are made over a short period with few transactions, raising concerns about the legitimacy of the funds used to make the payments.

Credit Card Misuse Detection: Identifies credit cards with unusually high spending amounts in a short period (e.g., within a week), which could indicate theft or misuse of the card.

Frequent Cash Advances: Finds credit cards with multiple large cash advances in a short period, which may indicate risky or fraudulent activity such as cash flow manipulation or unauthorized usage.

Geographically Distant Transactions: Detects suspicious account activity where transactions are conducted on the same day from different branch locations, which may indicate unauthorized access to an account.

**Database Structure:**
The project uses several interconnected tables, including:

Customers: Basic customer details like name, email, and phone.
Accounts: Information about customer accounts (e.g., savings or checking), account balances, and the date the account was opened.
Transactions: Records of all deposits and withdrawals made by customers.
Loans: Customer loan data including loan type, amount, and date.
LoanPayments: Payments made toward loans.
CreditCards: Credit card accounts associated with customers, including credit limits and balances.
CreditCardTransactions: Detailed records of credit card purchases and cash advances.
Branches: Information about the different bank branches, which is used to track geographically distant transactions.
How It Works:
The SQL queries in this project run against the data in the above tables to detect potential fraud. Each query addresses a specific fraud scenario, such as large and frequent transactions, inconsistent loan payments, or suspicious credit card activity. The project mimics real-world fraud detection scenarios in financial institutions, offering insights into the types of anomalies that might indicate illicit activity.

**Use Cases:**
This project can be a valuable addition to any financial data analyst's portfolio. It demonstrates knowledge of:

Working with relational databases and SQL queries.
Detecting patterns and anomalies in transaction data.
Understanding key concepts in fraud detection within the banking sector.

**How to Use:**
Clone or download the project files.
Import the SQL script into your database.
Run the fraud detection queries to analyze the sample dataset provided.
Review the query results to spot suspicious activity.

**Technologies Used:**
SQL: The project heavily relies on SQL for querying and analyzing data.
Relational Database: The data is stored in a relational structure, allowing for complex joins and queries across multiple tables.
This project serves as an excellent demonstration of applying SQL to a real-world problem, specifically in the financial services sector, where fraud detection is a critical component of daily operations.
