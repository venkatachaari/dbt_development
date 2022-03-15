with source as (
      select * from {{ ref('orders') }}
),

stage_order as (
      select 
             order_id,
             customer_order_id,
	     order_status,
	     order_purchase_timestamp,
	     order_approved_at,
	     order_delivered_carrier_date,
	     order_delivered_customer_date,
	     order_delivered_delivery_date
	     from source
),

select * from stage_order
