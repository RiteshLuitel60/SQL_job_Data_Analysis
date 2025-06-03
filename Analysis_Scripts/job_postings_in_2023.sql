-- JOB POSITNG IN 2023 IN DIFFERENT MONTHS
-- CHANGIGN ZONE FROM UTC TO EST ASWELL
SELECT 
EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS month,

COUNT( job_id) as no_of_job_postings

FROM job_postings_fact

WHERE
    EXTRACT(YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') = 2023


GROUP BY month

ORDER BY no_of_job_postings DESC

;