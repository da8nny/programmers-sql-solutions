SELECT ROUTE,
       CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,
       CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC;

--처음에는 정렬을 할 때 습관처럼 '총 누계 거리' 기준으로 내림차순 할 때,
-- 'TOTAL_DISTANCE' 컬럼을 기준으로 하니 오답처리가 되었다
-- 'TOTAL_DISTANCE는 단순 숫자가 아닌 'km'가 같이 붙여진 문자열이기 때문에 정렬이 되지 않는다
-- 따라서, 해당 값만 투입하여 정렬 진행
