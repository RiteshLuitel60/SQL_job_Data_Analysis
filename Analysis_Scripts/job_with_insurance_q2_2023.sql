SELECT name
FROM company_dim

LEFT JOIN job_postings_fact
ON company_dim.company_id = job_postings_fact.company_id

WHERE 
    job_postings_fact.job_health_insurance IS TRUE 
AND
    EXTRACT(QUARTER FROM job_posted_Date) = 2

LIMIT 1000;