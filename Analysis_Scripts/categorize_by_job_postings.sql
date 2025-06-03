WITH company_size AS(
    SELECT company_id, count(company_id) AS postings_amt
FROM job_postings_fact

GROUP BY company_id



)

SELECT company_dim.name, company_size.postings_amt,
CASE
    WHEN postings_amt BETWEEN 1 AND 2220 THEN 'Small'
    WHEN postings_amt BETWEEN 2221 AND 4440 THEN 'Medium'
    WHEN postings_amt BETWEEN 4441 AND 6661 THEN 'Large'
    ELSE 'Out of bounds'

END AS company_size


FROM company_size
INNER JOIN company_dim ON company_size.company_id = company_dim.company_id
order by postings_amt DESC

;