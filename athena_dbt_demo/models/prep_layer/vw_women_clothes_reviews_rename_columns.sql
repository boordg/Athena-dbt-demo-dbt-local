-- Drop some columns and renaming the rest

SELECT "Review Text" AS REVIEW_BODY,
       "Rating"      AS STAR_RATING,
       "Class Name"  AS PRODUCT_CATEGORY,
       "Clothing ID" as CLOTHING_ID
FROM "raw_data_9924b1c627a15cb9"."WOMEN_CLOTHES_REVIEWS_RAW_DATA"

