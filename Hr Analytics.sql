SELECT ROUND(SUM(CASE WHEN Attrition_Status='Yes' THEN 1 ELSE 0 END)*100/
COUNT(*),2) AS Attrition_Rate 
FROM hr_analytics_cleaned;

SELECT
Department,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition_Status='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_analytics_cleaned
GROUP BY Department;

SELECT
JobRole,
COUNT(*) AS Attrition_Count
FROM employees
WHERE Attrition_Status='Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;