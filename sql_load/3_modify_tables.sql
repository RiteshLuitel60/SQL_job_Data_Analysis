/* 
NOTE: If you are having issues with permissions. 

1. Open pgAdmin
2. In Object Explorer, navigate to `sql_course` database
3. Right-click `sql_course` and select `PSQL Tool`
4. Get the absolute file path of your csv files
5. Paste the following into `PSQL Tool`, (with the CORRECT file path)

\copy company_dim FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy skills_dim FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy job_postings_fact FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy skills_job_dim FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

*/


COPY company_dim
FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM '/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


could not open file "/Users/riteshluitel/Documents/Data Analytics/SQL/project1/csv_files/company_dim.csv" for reading: Permission denied