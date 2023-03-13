-- export view as table

CREATE TABLE "lifesight"."tbl_women_clothes_reviews_output"
WITH (
    external_location = 's3://datadump01/tbl_women_clothes_reviews_output/year=2023/month-03/',
    format = 'TEXTFILE',
    field_delimiter = '|',
	bucketed_by = ARRAY['CLOTHING_ID'], 
    bucket_count = 1) 	  
as

with cte_base as 
(
    SELECT *
    FROM {{ ref('vw_women_clothes_reviews_training_data') }}

)
