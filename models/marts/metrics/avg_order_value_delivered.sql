SELECT
    AVG(total_price) AS avg_order_value
FROM {{ ref('int_customer_orders') }}
WHERE delivery_status = 'Delivered'