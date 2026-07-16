SELECT * FROM stroke_data LIMIT 5;

SELECT 
	gender,
	ROUND(AVG(CAST (bmi AS NUMERIC)),2) AS avg_bmi,
	COUNT(CASE WHEN bmi IS NULL THEN 1 END) AS missing_bmi_count
	FROM stroke_data
	GROUP BY gender;

SELECT stroke ,COUNT(*) AS number_of_patients
FROM stroke_data
GROUP BY stroke;

SELECT 
	CASE
		WHEN age <45 THEN 'young(<45)'
		WHEN age BETWEEN 45 AND 65 THEN 'middle-age(45-65)'
		ELSE 'senior (>65)'
	END AS age_group,
	COUNT(*) AS total_patients,
	SUM (stroke)AS stroke_cases,
	ROUND(AVG(stroke)*100,2)AS stroke_rate_percentage
FROM stroke_data
GROUP BY age_group
ORDER BY stroke_rate_percentage DESC;

SELECT 
	CASE WHEN hyperte THEN 'young(<45)'
		WHEN age BETWEEN 45 AND 65 THEN 'middle-age(45-65)'
		ELSE 'senior (>65)'