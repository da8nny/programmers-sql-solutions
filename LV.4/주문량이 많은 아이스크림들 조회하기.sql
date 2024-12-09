-- 같은 맛의 아이스크림이라도 다른 출하 번호
SELECT FLAVOR
FROM   (SELECT FLAVOR, SUM(TOTAL_ORDER) TOTAL_ORDER
        FROM   (SELECT *
                FROM FIRST_HALF 
                UNION 
                SELECT *
                FROM JULY) A
        GROUP BY FLAVOR
        ORDER BY TOTAL_ORDER DESC
        LIMIT 3) B
