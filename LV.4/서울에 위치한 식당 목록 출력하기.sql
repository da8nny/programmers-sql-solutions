-- '서울' 위치한 식당 
-- BUT '%서울%'로 조건 설정 시 오답 처리
-- '서울%' 서울로 시작하는 주소 조건으로 변경

SELECT RI.REST_ID, REST_NAME, FOOD_TYPE, 
       FAVORITES, 
       ADDRESS,
       ROUND(AVG(REVIEW_SCORE), 2) SCORE
FROM REST_REVIEW RR LEFT JOIN REST_INFO RI
ON RR.REST_ID = RI.REST_ID
WHERE ADDRESS LIKE '서울%'
GROUP BY RI.REST_ID
ORDER BY 6 DESC, 4 DESC
