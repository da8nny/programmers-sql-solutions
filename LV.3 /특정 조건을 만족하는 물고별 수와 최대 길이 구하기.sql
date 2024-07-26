-- 종류별 잡은 수, 최대길이, 물고기 종류 출력
    -- GROUP BY FISH_TYPE
-- 평균 LENGTH 33cm 이상
    -- AVG(LENGTH) >= 33
-- 10cm 이하 물고기 10cm 취급 하여 평균 길이
    -- IFNULL 활용
-- 물고기 종류 오름차순
    -- FISH_TYPE ASC

SELECT COUNT(*) FISH_COUNT, MAX(LENGTH) MAX_LENGTH, FISH_TYPE
FROM FISH_INFO
GROUP BY FISH_TYPE
HAVING AVG(IFNULL(LENGTH, 10)) >= 33
ORDER BY FISH_TYPE ASC;
