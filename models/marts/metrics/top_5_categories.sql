SELECT
    product_category,
    SUM(total_price) AS total_revenue
FROM {{ ref('int_customer_orders') }}
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 5
