with source_dev_customer as (
	select * from {{ source('dev', 'customer') }}
),

final as (
	select * from source_dev_customer
)

select * from final


