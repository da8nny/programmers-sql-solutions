-- SQL의 기본 수행 순서에 의하면 별칭을 HAVING에서 사용 불가
-- 그러나 MYSql에서 예외적으로 별칭 사용 가능

SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1),1) AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY 2 DESC, 1 DESC;
