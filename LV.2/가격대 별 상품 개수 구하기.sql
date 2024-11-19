-- FLOOR 활용하여 소수점 버리는 방법
SELECT FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP, COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP

-- TRUNCATE 자릿수에 따라 버림해주는 방법
  -- -4는 곧 1000의 자리부터 버림해준다는 뜻
SELECT TRUNCATE(PRICE,-4) AS PRICE_GROUP, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP
