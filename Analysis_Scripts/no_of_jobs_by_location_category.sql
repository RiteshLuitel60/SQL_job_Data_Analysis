SELECT
    COUNT(job_id) AS number_of_jobs,

    CASE
        WHEN job_location = 'Anywhere' Then 'Remote'
        WHEN job_location = 'New York' Then 'Local'
        ELSE 'Onsite'
    END AS location_category

FROM job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

GROUP BY
    location_category;