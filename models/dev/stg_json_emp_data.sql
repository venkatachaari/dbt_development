with source_model as (

{{ flaten_json( model_name = source('dev','json_raw') , 
	        json_column = 'JSON_DATA_RAW'
	)
}}

), 

final ( select * from source_model )

sele * from final



