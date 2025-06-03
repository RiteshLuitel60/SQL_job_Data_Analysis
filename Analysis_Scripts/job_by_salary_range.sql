SELECT COUNT(job_id) AS no_of_jobs,

    CASE
    WHEN salary_year_avg < 100000 THEN 'Shit Pay'
    WHEN ((salary_year_avg >100000) AND (salary_year_avg <140000)) THEN 'Not Bad'
    ELSE 'Banger Pay'
    END AS salary_bucket


FROM job_postings_fact

WHERE job_title_short = 'Data Analyst'

GROUP BY salary_bucket

;