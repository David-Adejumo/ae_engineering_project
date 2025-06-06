This project uses **dbt** to transform raw customer order data into business-ready models that power insights on **revenue**, **customer behavior**, and **delivery performance**. It is part of a complete ETL pipeline using **Python (for ingestion)**, **SQLite (for storage)**, and **dbt (for transformation)**.


1. **Create a virtual environment**:
```bash
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate

2. ** Install dependencies:**
pip install dbt-core dbt-sqlite

**3. Configure your dbt profile:**

Create or edit ~/.dbt/profiles.yml:
customer_orders_project:
  target: dev
  outputs:
    dev:
      type: sqlite
      threads: 1
      database: /absolute/path/to/customer_order.db

**ETL Architecture:**
CSV File ───▶ Python Script (ingestion) ───▶ SQLite DB ───▶ dbt (Transformations) ───▶ BI Tools

Python loads raw CSV into orders table in customer_order.db
dbt transforms that table through:
staging → data ingestion
intermediate → all feature engineering asked in the question
marts/metrics → aggregatations and KPI

Model Layers
Staging Layer (models/staging/)
stg_customer_orders.sql: cleans raw fields, nulls, types

Intermediate Layer (models/intermediate/)
int_customer_orders.sql: adds total_price, order_month

Metrics Layer (models/marts/metrics/)
top_5_categories.sql
avg_order_value_delivered.sql
revenue_by_category_month.sql
delivery_status_distribution.sql
highest_revenue_month.sql


