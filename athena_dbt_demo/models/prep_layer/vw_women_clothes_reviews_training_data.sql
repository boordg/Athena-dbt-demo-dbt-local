-- Remove records with sentiment score in NULL
SELECT *, '2023' as YEAR, '03' as MONTH
FROM {{ ref('vw_women_clothes_reviews_sentiments') }}
WHERE SENTIMENT             IS NOT NULL
AND PRODUCT_CATEGORY        IS NOT NULL
AND PRODUCT_CATEGORY IN (
    SELECT PRODUCT_CATEGORY
    FROM {{ ref('vw_women_clothes_reviews_sentiments') }}
    GROUP BY PRODUCT_CATEGORY
    HAVING COUNT(*) >20
    )


