with source as (
      select * from dbt_venkatachaari.customer
),

stage_customer as (
      select 
             customer_id,
	     zipcode,
	     city,
	     state_code
	     from source
)

select * from stage_customer
