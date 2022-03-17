with source_dev_customer as (
	select * from {{ source('dev', 'customer') }}
),

final as (
	selece * from source_dev_customer
)

select * from final


