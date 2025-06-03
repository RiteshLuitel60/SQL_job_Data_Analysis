-- WITH skills_demand AS (
-- SELECT
--     skills_dim.skill_id,
--     skills_dim.skills,
--     COUNT(skills_job_dim.job_id) AS demand_count
-- FROM job_postings_fact


-- INNER JOIN 
--     skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id

-- INNER JOIN 
--     skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

-- WHERE
--     job_title_short = 'Data Analyst' 
--     AND job_work_from_home = TRUE 
--     AND salary_year_avg IS NOT NULL

-- GROUP BY skills_dim.skill_id

-- ),


-- average_salary AS (

--     SELECT 
--     skills_dim.skill_id,
    
--     ROUND(AVG(salary_year_avg), 0) AS avg_salary
-- FROM job_postings_fact


-- INNER JOIN 
--     skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id

-- INNER JOIN 
--     skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

-- WHERE
--     job_title_short = 'Data Analyst' AND 
--     salary_year_avg IS NOT NULL

-- GROUP BY skills_dim.skill_id

-- )

-- SELECT
--     *
-- FROM
--     skills_demand 

-- INNER JOIN average_salary 
-- ON
--     skills_demand.skill_id = average_salary.skill_id

-- WHERE
--     demand_count > 10

-- ORDER BY 
--     demand_count DESC,
--     avg_salary DESC

--     LIMIT 10
    

--     ;



SELECT
  skills_dim.skill_id,
  skills_dim.skills,
  COUNT(skills_job_dim.job_id) AS demand_count,
  ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
  AND job_work_from_home = TRUE
GROUP BY skills_dim.skill_id
HAVING COUNT(skills_job_dim.job_id) > 10
ORDER BY demand_count DESC, avg_salary DESC
LIMIT 20;


/* 1. Core Analytics Stack Leads in Demand
SQL (398), Excel (256), Python (236), Tableau (230), and Power BI (110) dominate in job count.

These are foundational tools—must-know for most data analyst roles.

2. High Salaries Come with Specialized Tools
Tools like Go ($115K), Snowflake ($113K), Azure ($111K), and AWS ($108K) offer premium salaries.

These are typically tied to cloud, engineering, or automation-focused roles.


Tools like Word, PowerPoint, and Sheets have lower salaries and likely reflect basic office skills, not core analytics.*/