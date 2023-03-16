--base tbl_movement_geohash_parquet as a view
Select
    a.* 
    --,row_number() over (partition by a.maid order by a.maid) as RowId					
from lifesight.tbl_movement_geohash_parquet a 
where 1=1