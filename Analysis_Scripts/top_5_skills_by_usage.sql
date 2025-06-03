-- cte to get top 5 skills by frequency of usage

WITH top_5_skills AS(
SELECT COUNT(skill_id) AS skill_used_times,
        skill_id
FROM 
    skills_job_dim
GROUP BY skill_id
ORDER BY skill_used_times desc

LIMIT 5
)

SELECT skills, top_5_skills.skill_used_times
FROM skills_dim
INNER JOIN top_5_skills ON top_5_skills.skill_id = skills_dim.skill_id
ORDER BY top_5_skills.skill_used_times DESC

;
