-- ¿Cuál es la tasa de rotación general de la empresa?
SELECT 
	COUNT(hr_id) AS total_empleados,
	ROUND((COUNT(*) FILTER(WHERE attrition='Yes')::NUMERIC / COUNT(hr_id)) * 100, 2) AS tasa_rotación
FROM analisis_hr;

-- ¿Qué departamento tiene más rotación?
SELECT
	department,
	COUNT(*) FILTER(WHERE attrition='Yes') AS rotación,
	ROUND((COUNT(*) FILTER(WHERE attrition='Yes')::NUMERIC / COUNT(hr_id)) * 100, 2) AS tasa_rotación
FROM analisis_hr
GROUP BY department
ORDER BY rotación DESC;

-- ¿Los empleados que hacen horas extra rotan más?
SELECT
	overtime AS horas_extras,
	ROUND((COUNT(*) FILTER(WHERE attrition='Yes')::NUMERIC / COUNT(hr_id)) * 100, 2) AS tasa_rotación
FROM analisis_hr
GROUP BY overtime;

-- ¿Qué relación hay entre satisfacción laboral y rotación?
SELECT
	jobsatisfaction AS satisfacción_trabajo,
	ROUND((COUNT(*) FILTER(WHERE attrition='Yes')::NUMERIC / COUNT(hr_id)) * 100, 2) AS tasa_rotación
FROM analisis_hr
GROUP BY jobsatisfaction;

-- ¿Cuál es el perfil del empleado que más rota (edad, salario, años en la empresa)?
SELECT
	attrition AS rotación,
	ROUND(AVG(age), 0) AS edad,
	ROUND(AVG(monthlyincome), 2) AS salario,
	ROUND(AVG(yearsatcompany), 2) AS años_en_la_compañia
FROM analisis_hr
GROUP BY attrition;