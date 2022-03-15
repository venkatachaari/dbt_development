with source as (
      select * from {{ var('seed_schema')('customers') }}
),

stage_customer as (
      select 
             customer_order_id,
	     customer_uniquer_id,
	     customer_zip_code_prefix,
	     customer_city,
	     customer_st
	     from source
)

select * from stage_customer
