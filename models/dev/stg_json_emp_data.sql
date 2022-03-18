with source_model as (

{{ flatten_json( 
	model_name = source('dev','json_raw') , 
	json_column = 'JSON_DATA_RAW'
	)}}

), 

final as (
    select 
	email,
	state,
	name 

    from source_model

)

select * from  final 



