SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact


INNER JOIN 
    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id

INNER JOIN 
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL




GROUP BY skills

ORDER BY avg_salary DESC


LIMIT 25;

/*
1. Niche Skills Can Pay Exceptionally Well
Tools like SVN ($400K) and Couchbase ($160K) top the salary list despite not being widely used today.

This suggests that legacy system expertise or rare skillsets are highly valued in specific industries or companies.

2. AI/ML Frameworks Drive High Salaries
Skills like DataRobot, Keras, PyTorch, TensorFlow, Hugging Face, and MXNet all offer $120K+ salaries.

Demand for deep learning and model deployment skills is strong, especially for production-grade AI roles.

3. DevOps & Infrastructure Skills Are Highly Rewarded
Tools like Terraform, Ansible, Puppet, GitLab, and Airflow all show high average salaries.

This highlights the importance of automation, CI/CD, and scalable architecture in data engineering and analytics pipelines

 */