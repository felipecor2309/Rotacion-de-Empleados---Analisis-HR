# Rotacion-de-Empleados---Analisis-HR
Análisis exploratorio de la rotación de empleados que se da por diferentes factores.

## Objetivo
Analizar los patrones de rotación de empleados en una empresa para identificar los factores que más influyen en la decisión de renunciar y construir un perfil del empleado con mayor riesgo de rotación.

## Datos
- Fuente: Kaggle - IBM HR Analytics Employee Attrition & Performance (https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- Contenido: 1.470 registros de empleados con variables de satisfacción, salario, departamento, horas extra y antigüedad
- Variables principales: Attrition, Department, OverTime, JobSatisfaction, Age, MonthlyIncome, YearsAtCompany

## Herramientas
- Python (pandas) — limpieza y preparación de los datos
- PostgreSQL — análisis mediante consultas SQL (Archivo .sql disponible en este repositorio)
- Power BI — construcción del dashboard interactivo

## Proceso
Los datos fueron limpiados con Python eliminando columnas sin valor analítico, luego importados a PostgreSQL para responder preguntas de negocio específicas sobre rotación. Finalmente se construyó un dashboard interactivo en Power BI con filtros por género, estado civil y viajes de negocios.

## Hallazgos principales
1. La tasa de rotación general de la empresa es del 16.12%, por encima del 10% considerado saludable en RRHH.
2. Los empleados que hacen horas extra rotan casi 3 veces más (30.53%) que los que no las hacen (10.44%), siendo el factor más crítico identificado.
3. El departamento de Sales tiene la mayor tasa de rotación con un 21%, seguido de Human Resources con 19%.
4. Los empleados insatisfechos con su trabajo (nivel 1) rotan el doble (22.8%) que los muy satisfechos (nivel 4 con 11.3%).
5. El perfil del empleado que más rota es: 34 años de edad, salario mensual de $4.787 y 5 años en la empresa en promedio, significativamente por debajo de los empleados que se quedan.

## Dashboard
<img width="1278" height="798" alt="image" src="https://github.com/user-attachments/assets/978edb56-3be4-4641-a2ef-5c3868cecdf3" />
Archivo .pbix disponible en este repositorio.
