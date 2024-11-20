-- CASE문 활용
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
       CASE WHEN STATUS = 'SALE' THEN '판매중'
       WHEN STATUS = 'RESERVED' THEN '예약중'
       WHEN STATUS = 'DONE' THEN '거래완료'
       END AS STATUS
FROM USED_GOODS_BOARD 
WHERE CREATED_DATE LIKE '2022-10-05%'
ORDER BY BOARD_ID DESC;

-- IF문 중첩 활용
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
       IF (STATUS = 'SALE', '판매중',
           IF(STATUS = 'RESERVED', '예약중',
             IF(STATUS = 'DONE', '거래완료', STATUS))) AS STATUS
FROM USED_GOODS_BOARD 
WHERE CREATED_DATE LIKE '2022-10-05%'
ORDER BY BOARD_ID DESC;
