-- job applied every month 

SELECT 
(EXTRACT(MONTH FROM job_posted_date)) AS month,
COUNT( job_id) as no_of_job_postings

FROM job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

GROUP BY month

ORDER BY no_of_job_postings DESC

;
