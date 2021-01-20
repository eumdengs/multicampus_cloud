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



1. **50�� �μ� ������ ��դ� �ְ�, ����, �ο����� ���Ͽ� ����϶�**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS ��տ���, MAX(SALARY) AS �ְ����, MIN(SALARY) AS ��������, COUNT(*) AS �ο���
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID
   HAVING DEPARTMENT_ID =50;
   ```

   

2. **�� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS ��տ���, MAX(SALARY) AS �ְ����, MIN(SALARY) AS ��������, COUNT(*) AS �ο���
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID;
   ```

   

3. **�� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.**

   ```sql
   SELECT DEPARTMENT_ID AS �μ���ȣ, JOB_ID AS ������, COUNT(*) AS �ο���
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID, JOB_ID;
   ```

   

4. **���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.**

   ```sql
   SELECT JOB_ID AS ������, COUNT(*) AS �ο���
   FROM EMPLOYEES
   GROUP BY JOB_ID
   HAVING COUNT(*) >= 4;
   ```

   

5. **�� �μ��� ��տ���, ��ü����, �ְ����, ��������,�� ���Ͽ� ��տ����� ���������� ����϶�**

   ```sql
   SELECT TRUNC(AVG(SALARY)) AS ��տ���, MAX(SALARY) AS �ְ����, MIN(SALARY) AS ��������
   FROM EMPLOYEES
   GROUP BY DEPARTMENT_ID
   ORDER BY ��տ��� DESC;
   ```

   

6. **�μ���ȣ, �μ���, �̸�, �޿��� ����϶�**

   ```sql
   SELECT A.DEPARTMENT_ID AS �μ���ȣ, B.DEPARTMENT_NAME AS �μ���, A.FIRST_NAME AS �̸�, A.SALARY AS �޿�
   FROM EMPLOYEES A, DEPARTMENTS B
   WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID;
   ```

   

7. **�̸��� adam�� ����� �μ����� ����϶�.**

   ```sql
   SELECT B.DEPARTMENT_NAME AS �μ���
   FROM EMPLOYEES A, DEPARTMENTS B
   WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID
   AND A.FIRST_NAME = 'adam';
   ```

   

8. **employees���̺� �ִ� employee_id�� manager_id�� �̿��Ͽ� ������ ���踦 ������ ���� ����϶�**
   **'smith'�� �Ŵ����� 'ford'�̴�**

   ```sql
   SELECT e1.FIRST_NAME ||'�� �Ŵ����� '|| e2.FIRST_NAME ||' �̴�'
   FROM EMPLOYEES e1 LEFT OUTER JOIN EMPLOYEES e2
   ON e1.MANAGER_ID = e2.EMPLOYEE_ID;
   ```

   - NVL(�÷�, 0) -> �÷��� NULL�� ��� 0���� ġȯ



9. **adam�� ������ ���� ������ ���� ����� �̸�, �μ���, �޿�, ������ ����϶�**

   ```sql
   
   ```

   

�Է���...