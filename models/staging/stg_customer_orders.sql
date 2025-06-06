select  order_id,
        customer_id,
        order_date,
        product_category,
        product_name,
        quantity,
        price_per_unit,
        coalesce(discount_applied, 0) as discount_applied,
        delivery_status
         from {{ source('main', 'customer') }}