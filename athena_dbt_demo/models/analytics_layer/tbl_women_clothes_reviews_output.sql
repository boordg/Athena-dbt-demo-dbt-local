
SELECT *
FROM {{ ref('vw_women_clothes_reviews_training_data') }}
Where YEAR  =  '{{ var ("path_year") }}'
and MONTH  =  '{{ var ("path_month") }}'
