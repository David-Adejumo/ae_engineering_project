#Customer Orders Analytics Project (Python + dbt + SQLite + Power BI)

This project is part of an end-to-end ETL and analytics pipeline that transforms raw customer order data into actionable business insights using **Python**, **SQLite**, **dbt**, and **Power BI**. It was designed to demonstrate practical data engineering and business intelligence skills using a lightweight, modular, and widely used stack.

---

## Introduction (Objectives)

The main goals of this project are to:
- Build and end to end pipleine with data transformation 
- Understand product category performance trend
- Evaluate order delivery efficiency  
- Measure revenue trends and customer behavior  
- Provide business stakeholders with timely and reliable insights for decision-making  

---

## Methodology
### 1. Ingestion
-  **Tool**: Python (`pandas`, `sqlite3`)
- **Reason**: Python is lightweight and flexible, making it ideal for reading CSVs and inserting into a local SQLite database.
- The raw data (`customer_orders.csv`) is ingested into a local SQLite DB (`etl_staging.db`) for portability and offline development.

### 2. Transformation
-  **Tool**: dbt (`dbt-core`, `dbt-sqlite`)
- **Reason**: dbt enables modular, version-controlled SQL transformations with built-in testing and documentation. It separates logic into:
  - **Staging** (cleaning)
  - **Intermediate** (feature engineering)
  - **Marts** (business metrics)

**After the data transformation, below is the data lineage from your source to the business logic:**

<img width="925" alt="dbt_lineage" src="https://github.com/user-attachments/assets/52182540-2b25-4d7b-bc22-6630087d649c" />


### 3. Visualization
- **Tool**: Power BI 
-  **Reason**: These tools easily connect to SQLite and make it simple for stakeholders to explore insights visually without writing code.

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
| Storage        | SQLite (`etl_staging.db`)    | File-based DB, zero configuration, perfect for local analytics and portability |
| Transformation | dbt (`dbt-core`, `dbt-sqlite`)| Clean, modular SQL models with lineage, tests, and reproducibility           |
| Analytics       | Power BI                  | Easy-to-use dashboards for business teams and non-technical users             |

---

### Why This Stack was used?

- **Lightweight** – Ideal for local or demo environments with no external dependencies  
- **Modular** – dbt's layered approach (staging → intermediate → marts) keeps logic clean  
- **Transparent** – dbt auto-documents models and dependencies  
- **Accessible** – Stakeholders can easily interact with visual dashboards  

---

##  Key Insights
Key metrics produced from the transformed data:

1. **Revenue & Delivery Performance**
   
    • **Total Revenue:** **1.46M** (with 20% from delivered orders).
    • **Delivery Challenges:** **18%** of revenue tied to cancelled orders, **21%** to returned orders (highest among all statuses).
   
3. **Product Category Analysis**

    • **Top Performers:**
    • **Food & Beverage** (**21%** revenue share, **₦309K**) and **Home Goods** (**20%, ₦296K**) lead in revenue, Books and Clothing follow closely (~19% each).

4. **Top-Selling Product name**
   
   **Best Performers:**
   
    • Jeans (**₦75K, 11%** revenue share) and Tablet (**₦72K, 11%**) drive sales.
    • Energy Drink and History Book also contribute significantly (~10% each).
    •**Lowest Margin:** Organic Tea (**9.3%** revenue) has the lowest average sales (₦750). Test pricing or marketing tactics to improve its performance.
   
6. **Customer Behavior**
    • Avg. Order Value (Delivered): **₦744**
    • **High-Value Products:** Air Fryer (₦885/order) and History Book (₦785/order) have the highest average sales.
   
7. **Monthly Trends**
    • Revenue Peaks: Observe spikes in the month of October, **2023 with ~140K** and **563** in value and count respectively

---

## Recommendations

1. **Reduce Cancellations/Returns:**
   
      • Optimize product descriptions and images to set accurate expectations.
      • Offer incentives for keeping returned items (e.g., discounts on future purchases).
   
2. **Boost Electronics Sales:**
      • Electronics has the lowest average sales per order (**₦666**). Consider bundling strategies or promotions to boost order value.
   
3. **Promote High-Performing Products:**
      • sponsor Jeans, Tablets, and Air Fryers in targeted ads or homepage banners.
   
4. **Improve Low Performers:**
      • Run A/B tests on pricing/packaging for Organic Tea and Protein Bars.
   
5. **Leverage Seasonal Trends:**
      • Plan inventory and marketing around revenue peaks (e.g., holidays)

---
