SELECT
    order_month,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM {{ ref('int_customer_orders') }}
GROUP BY order_month
