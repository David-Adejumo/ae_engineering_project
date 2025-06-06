    select
        *,
        quantity * price_per_unit * (1 - discount_applied) as total_price,
        substr(order_date, 1, 7) as order_month
    from {{ ref('stg_customer_orders') }}
