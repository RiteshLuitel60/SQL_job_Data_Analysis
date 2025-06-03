WITH new_table AS (
    SELECT 
        job_title_short,
        job_location,
        skills_job_dim.skill_id,
        skills
    FROM job_postings_fact
    INNER JOIN skills_job_dim 
        ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id = skills_dim.skill_id
)

SELECT 
    skills,
    skill_id,
    COUNT(skills) AS skill_usage
FROM new_table
WHERE job_location = 'Anywhere'
GROUP BY skills, skill_id
ORDER BY skill_usage DESC
LIMIT 5;
