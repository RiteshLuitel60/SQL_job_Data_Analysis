  SELECT
    q1_job_postings.job_title_short,
    q1_job_postings.job_location,
    q1_job_postings.job_via,
    q1_job_postings.job_posted_date::date

  FROM(
  SELECT * 
  FROM january_jobs

  UNION ALL

  SELECT *
  FROM february_jobs
  UNION ALL 
  SELECT *
  FROM march_jobs) AS q1_job_postings
    WHERE salary_year_avg >70000 AND 
        job_title_short = 'Data Analyst'
    ORDER BY
        salary_year_avg DESC
  ;