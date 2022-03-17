with source as (
         select 1 as id
         union all 
	select 2 as id
),

stage_id as (
      select 
             id
	     from source
)

select * from stage_id
