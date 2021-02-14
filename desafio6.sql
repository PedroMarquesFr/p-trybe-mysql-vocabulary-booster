SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) "Nome completo",
(SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = e.JOB_ID) AS "Cargo",
HIRE_DATE "Data de início do cargo",
( SELECT DEPARTMENT_NAME FROM hr.departments WHERE DEPARTMENT_ID = e.DEPARTMENT_ID) "Departamento"
 FROM hr.employees AS e
 ORDER BY `Nome completo` DESC, `Cargo`;