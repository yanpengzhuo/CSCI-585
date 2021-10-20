-- Database used: MySQL.
-- report the employee ID AND name who reported all five SYMPTOM.
-- basically, it's a table division 
SELECT SYMPTOM.EMP_ID, EMP_NAME
From SYMPTOM
Join EMPLOYEE ON EMPLOYEE.EMP_ID = SYMPTOM.EMP_ID
WHERE SYMPTOM_ID IN (SELECT SYMPTOM_ID FROM SYMPTOM_DETAIL)
GROUP BY EMP_ID
HAVING COUNT(*) = (SELECT COUNT(*) FROM SYMPTOM_DETAIL);
