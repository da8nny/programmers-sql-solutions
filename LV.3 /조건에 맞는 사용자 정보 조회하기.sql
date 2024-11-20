-- 중고 거래 게시글 3건 이상 등록 사용자
-- 사용자 ID, 닉네임, 전체주소, 전화번호
-- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
-- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력

SELECT WRITER_ID, NICKNAME, 
       CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS 전체주소,
       CONCAT(SUBSTRING(TLNO, 1, 3), '-', SUBSTRING(TLNO, 4, 4), '-', SUBSTRING(TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_BOARD B INNER JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
GROUP BY WRITER_ID
HAVING COUNT(*) >= 3 
ORDER BY WRITER_ID DESC;


-- 인라인뷰 서브쿼리 활용
SELECT WRITER_ID, NICKNAME, 
       CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS 전체주소,
       CONCAT(SUBSTRING(TLNO, 1, 3), '-', SUBSTRING(TLNO, 4, 4), '-', SUBSTRING(TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_BOARD B INNER JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
WHERE USER_ID IN (SELECT WRITER_ID
                  FROM USED_GOODS_BOARD
                  GROUP BY WRITER_ID
                  HAVING COUNT(*) >=3)
ORDER BY WRITER_ID DESC;
                  
