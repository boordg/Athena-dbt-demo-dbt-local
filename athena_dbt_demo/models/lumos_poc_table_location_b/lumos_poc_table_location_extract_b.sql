-- Location_B
With cte_base as 
(
	Select
		a.* 		
    From {{ ref('vw_tbl_movement_geohash_parquet') }} a
    Where YEAR  =  '{{ var ("path_year") }}'
    And MONTH  =  '{{ var ("path_month") }}'
	And ST_Distance(to_spherical_geography(ST_Point({{ var ("longitude") }},{{ var ("latitude") }})), to_spherical_geography(ST_Point(a.longitude, a.latitude))) < {{ var ("distance_meters") }}
	limit 50
)
Select a.*
From	cte_base a
