-- Avg hourly and annual salary grouped by job schedule type 

SELECT
    AVG(salary_year_avg) AS avg_yearly_salary,
    AVG(salary_hour_avg) AS avg_hourly_salary,
    job_schedule_type

FROM job_postings_fact

WHERE 
    (job_posted_date::DATE) > '2023-06-01'

    
GROUP BY job_schedule_type
    
