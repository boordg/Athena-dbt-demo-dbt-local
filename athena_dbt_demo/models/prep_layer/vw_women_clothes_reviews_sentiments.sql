-- Create sentiment score

SELECT REVIEW_BODY,
       PRODUCT_CATEGORY,
       CASE WHEN STAR_RATING BETWEEN 1 AND 2  THEN -1
            WHEN STAR_RATING = 3              THEN 0
            WHEN STAR_RATING BETWEEN 4 AND 5  THEN 1
            ELSE NULL
       END                                  AS SENTIMENT,
       CLOTHING_ID                          AS CLOTHING_ID
FROM {{ ref('vw_women_clothes_reviews_rename_columns') }}











