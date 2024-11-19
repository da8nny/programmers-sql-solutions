-- MAX( ) 안에 날짜를 넣었을 때 1이 나오면 해당 자동차는 대여 중이라는 의미로 해석 가능

SELECT CAR_ID, 
       CASE WHEN MAX('2022-10-16' BETWEEN START_DATE AND END_DATE) = 1
       THEN '대여중'
       ELSE '대여 가능'
       END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC
