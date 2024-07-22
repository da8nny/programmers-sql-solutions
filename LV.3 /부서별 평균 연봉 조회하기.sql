-- 부서별 평균 연봉
-- 부서별로 부서ID, 영문 부서명, 평균 연봉 조회
-- 평균연봉 소수 첫째 자리에서 반올림 (AVG_SAL)
-- 부서별 평균 연봉 기준 DESC

SELECT D.DEPT_ID, DEPT_NAME_EN, ROUND(AVG(SAL), 0) AS AVG_SAL
FROM HR_DEPARTMENT D JOIN HR_EMPLOYEES E
ON D.DEPT_ID = E.DEPT_ID
GROUP BY D.DEPT_ID
ORDER BY 3 DESC;
