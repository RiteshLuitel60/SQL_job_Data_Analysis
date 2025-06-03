SELECT
    job_postings_fact.job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name


FROM job_postings_fact

Inner JOIN company_dim
ON
    job_postings_fact.company_id = company_dim.company_id

INNER JOIN skills_job_dim
    ON skills_job_dim.job_id = skills_job_dim.job_id
    
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short LIKE '%Data%Analyst%' 
AND
    salary_year_avg IS NOT NULL
AND job_location = 'Anywhere'

ORDER BY salary_year_avg DESC


;