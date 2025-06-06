#Customer Orders Analytics Project (dbt + SQLite + Power BI)

This project is part of an end-to-end ETL and analytics pipeline that transforms raw customer order data into actionable business insights using **Python**, **SQLite**, **dbt**, and **Power BI**. It was designed to demonstrate practical data engineering and business intelligence skills using a lightweight, modular, and widely used stack.

---

## Introduction (Objectives)

The main goals of this project are to:
- build and end to end pipleine with data transformation 
- Understand product category performance trend
- Evaluate order delivery efficiency  
- Measure revenue trends and customer behavior  
- Provide business stakeholders with timely and reliable insights for decision-making  

---

## Methodology
### 1. Ingestion
-  **Tool**: Python (`pandas`, `sqlite3`)
- 📌 **Reason**: Python is lightweight and flexible, making it ideal for reading CSVs and inserting into a local SQLite database.
- The raw data (`customer_orders.csv`) is ingested into a local SQLite DB (`customer_order.db`) for portability and offline development.

### 2. Transformation
-  **Tool**: dbt (`dbt-core`, `dbt-sqlite`)
- **Reason**: dbt enables modular, version-controlled SQL transformations with built-in testing and documentation. It separates logic into:
  - **Staging** (cleaning)
  - **Intermediate** (feature engineering)
  - **Marts** (business metrics)

### 3. Visualization
- **Tool**: Power BI 
- 📌 **Reason**: These tools easily connect to SQLite and make it simple for stakeholders to explore insights visually without writing code.

---

## Data dictionary

The source dataset `customer_orders.csv` contains:

| Column Name         | Description                                |
|---------------------|--------------------------------------------|
| order_id            | Unique order identifier                    |
| customer_id         | Unique customer identifier                 |
| order_date          | Date the order was placed                  |
| product_category    | Category of the product ordered            |
| product_name        | Product name                               |
| quantity            | Quantity ordered                           |
| price_per_unit      | Unit price of the product                  |
| discount_applied    | Discount applied on the order              |
| delivery_status     | Status of the order delivery               |

---

## Data Preparation (Tools Used + Why)

| Step           | Tool / Tech Used           | Reason It Was Used                                                               |
|----------------|----------------------------|-------------------------------------------------------------------------------|
| Ingestion      | Python (`pandas`, `sqlite3`)| Lightweight and flexible for reading CSVs and loading into SQLite             |
| Storage        | SQLite (`assessment.db`)    | File-based DB, zero configuration, perfect for local analytics and portability |
| Transformation | dbt (`dbt-core`, `dbt-sqlite`)| Clean, modular SQL models with lineage, tests, and reproducibility           |
| Analysis       | Power BI / Tableau         | Easy-to-use dashboards for business teams and non-technical users             |

---

### Why This Stack was used?

- **Lightweight** – Ideal for local or demo environments with no external dependencies  
- **Modular** – dbt's layered approach (staging → intermediate → marts) keeps logic clean  
- **Transparent** – dbt auto-documents models and dependencies  
- **Accessible** – Stakeholders can easily interact with visual dashboards  

---

##  Key Insights
Key metrics produced from the transformed data:

1. **Top 5 Product Categories**  
   - Highest contributors to total revenue (e.g., Electronics, Clothing)

2. **Average Order Value (Delivered Orders)**  
   - Helps evaluate profitability from completed sales

3. **Monthly Revenue Trends**  
   - Shows seasonality and marketing campaign performance

4. **Delivery Status Distribution**  
   - Identifies fulfillment bottlenecks or logistics issues

5. **Highest Revenue Month**  
   - Guides planning for future promotions and stock optimization

---

## Recommendations

1. **Stock High-Performing Categories**  
   Focus inventory and marketing on categories that consistently generate revenue.

2. **Improve Delivery Pipeline**  
   Investigate and reduce 'Pending' or 'Cancelled' deliveries to increase customer satisfaction.

3. **Run Loyalty Programs in Peak Months**  
   Leverage historical high-revenue periods for targeted discounting and retention.

---
