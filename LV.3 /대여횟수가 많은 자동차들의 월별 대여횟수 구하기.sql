-- car_id 행 5개 이상인 데이터 서브쿼리로 뽑기
-- 이때 대여시작 기간이 2022.08.01-2022.10.31 내에 있어야 함
-- 서브쿼리에서 찾은 car_id에 대해 다시 월별 대여 횟수를 집계하기 위한 날짜 조건을 사용

SELECT month(START_DATE) MONTH, CAR_ID, count(*) RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID in (select CAR_ID
                  from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                  where START_DATE >= '2022-08-01' and START_DATE <= '2022-10-31'
                  group by CAR_ID
                  having count(*) >= 5)
    and START_DATE >= '2022-08-01' and START_DATE <= '2022-10-31'
group by MONTH, CAR_ID
order by MONTH, CAR_ID DESC;
