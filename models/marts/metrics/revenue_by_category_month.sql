SELECT
    product_category,
    order_month,
    SUM(total_price) AS total_revenue
FROM {{ ref('int_customer_orders') }}
GROUP BY product_category, order_month
