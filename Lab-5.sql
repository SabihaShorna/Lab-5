

Activity-1

SELECT LAST_NAME, HIRE_DATE
	FROM emps
	   WHERE Department_Id = 
    (SELECT Department_Id
	FROM emps
WHERE Last_Name = 'Zlotkey')
	  AND Last_Name <> 'Zlotkey';




Activity-2

SELECT EMPLOYEE_ID, LAST_NAME,SALARY
	FROM emps
	WHERE Salary > (SELECT AVG(Salary)
			FROM emps)
	ORDER BY Salary;




Activity-3

SELECT LAST_NAME, SALARY
	FROM emps
	WHERE Manager_id = (SELECT Employee_Id
			    FROM emps
		 WHERE Last_Name = 'King');




Activity-4

SELECT EMPLOYEE_ID,LAST_NAME, SALARY
	FROM emps
	WHERE Department_Id IN (SELECT Department_Id
		FROM emps
				WHERE Last_Name like '%u%')
                AND  Salary >
                (SELECT AVG(Salary)
			FROM emps) ;




Activity-5

CREATE TABLE NEW(EMPLOYEE_ID INT (7)NOT NULL, LAST_NAME VARCHAR(25)NOT NULL, FIRST_NAME VARCHAR(25)NOT NULL);

insert into NEW(EMPLOYEE_ID,FIRST_NAME, LAST_NAME) VALUES (111, 'Lamu', 'Aya'),(112, 'Abaya', 'Koly'),(211, 'Kera', 'Kolhna'),(121, '	Bemu', 'Ayaz'),(611, 'Isana', 'Paru');

SELECT 
        EMPLOYEE_ID, FIRST_NAME, LAST_NAME
    FROM
        NEW
UNION 
  SELECT 
 EMPLOYEE_ID, FIRST_NAME, LAST_NAME
    FROM 
  emps
       ORDER BY EMPLOYEE_ID;




Activity-6

CREATE TABLE EMP(ID INT (7), LAST_NAME VARCHAR(25), FIRST_NAME VARCHAR(25), DEPT_ID INT(7));

a)ALTER TABLE EMP modify LAST_NAME VARCHAR(50);
DESCRIBE EMP;

b)CREATE TABLE EMPLOYEES2 AS SELECT EMPLOYEE_ID ID, FIRST_NAME , LAST_NAME, SALARY, DEPARTMENT_ID DEPT_ID FROM emps;

c)DROP TABLE EMP;

d)RENAME TABLE EMPLOYEES2 TO EMP;

e)ALTER TABLE EMP DROP COLUMN FIRST_NAME  ;                                 
DESCRIBE EMP ;