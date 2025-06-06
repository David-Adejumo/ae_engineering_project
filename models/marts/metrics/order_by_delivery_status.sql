SELECT
    delivery_status,
    COUNT(*) AS order_count
FROM {{ ref('int_customer_orders') }}
GROUP BY delivery_status
