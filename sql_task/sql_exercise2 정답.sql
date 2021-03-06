-- **Employees Table Columns**
-- EMPLOYEE_ID
-- FIRST_NAME
-- LAST_NAME
-- EMAIL
-- PHONE_NUMBER
-- HIRE_DATE
-- JOB_ID
-- SALARY
-- COMMISSION_PCT
-- MANAGER_ID
-- DEPARTMENT_ID

--**DEPARTMENTS Table Columns**
--DEPARTMENT_ID
--DEPARTMENT_NAME
--MANAGER_ID
--LOCATION_ID



1. **50번 부서 월급의 평균ㅡ 최고, 최저, 인원수를 구하여 출력하라**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS 평균월급, MAX(SALARY) AS 최고월급, MIN(SALARY) AS 최저월급, COUNT(*) AS 인원수
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID
   HAVING DEPARTMENT_ID =50;
   ```

   

2. **각 부서별 급여의 평균, 최고, 최저, 인원수를 구하여 출력하라.**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS 평균월급, MAX(SALARY) AS 최고월급, MIN(SALARY) AS 최저월급, COUNT(*) AS 인원수
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID;
   ```

   

3. **각 부서별 같은 업무를 하는 사람의 인원수를 구하여 부서번호, 업무명, 인원수를 출력하라.**

   ```sql
   SELECT DEPARTMENT_ID AS 부서번호, JOB_ID AS 업무명, COUNT(*) AS 인원수
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID, JOB_ID;
   ```

   

4. **같은 업무를 하는 사람의 수가 4명 이상인 업무와 인원수를 출력하라.**

   ```sql
   SELECT JOB_ID AS 업무명, COUNT(*) AS 인원수
   FROM EMPLOYEES
   GROUP BY JOB_ID
   HAVING COUNT(*) >= 4;
   ```

   

5. **각 부서별 평균월급, 전체월급, 최고월급, 최저월급,을 구하여 평균월급이 많은순으로 출력하라**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS 평균월급, MAX(SALARY) AS 최고월급, MIN(SALARY) AS 최저월급
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID
   ORDER BY 평균월급 DESC;
   ```

   

6. **부서번호, 부서명, 이름, 급여를 출력하라**

   ```sql
   SELECT A.DEPARTMENT_ID AS 부서번호, B.DEPARTMENT_NAME AS 부서명, A.FIRST_NAME AS 이름, A.SALARY AS 급여
   FROM EMPLOYEES A, DEPARTMENTS B
   WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID;
   ```

   

7. **이름이 adam인 사원의 부서명을 출력하라.**

   ```sql
   SELECT B.DEPARTMENT_NAME AS 부서명
   FROM EMPLOYEES A, DEPARTMENTS B
   WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID
   AND A.FIRST_NAME = 'adam';
   ```

   

8. **employees테이블에 있는 employee_id와 manager_id를 이용하여 서로의 관계를 다음과 같이 출력하라**
   **'smith'의 매니저는 'ford'이다**

   ```sql
   SELECT e1.FIRST_NAME ||'의 매니저는 '|| e2.FIRST_NAME ||' 이다'
   FROM EMPLOYEES e1 LEFT OUTER JOIN EMPLOYEES e2
   ON e1.MANAGER_ID = e2.EMPLOYEE_ID;
   ```

   - NVL(컬럼, 0) -> 컬럼이 NULL인 경우 0으로 치환



9. **adam의 직무와 같은 직무를 갖는 사람의 이름, 부서명, 급여, 직무를 출력하라**

   ```sql
   
   ```

   

입력중...