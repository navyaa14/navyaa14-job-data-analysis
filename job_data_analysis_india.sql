CREATE DATABASE IF NOT EXISTS job_data_india;
USE job_data_india;

CREATE TABLE jobanalysisdata (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    company VARCHAR(100),
    location VARCHAR(100),
    post_date DATE,
    skills_required TEXT,
    salary_max VARCHAR(50),
    experience VARCHAR(50),
    remote_option VARCHAR(50),
    company_size VARCHAR(50)
);
SELECT COUNT(*) AS total_jobs FROM jobanalysisdata;
SELECT company, COUNT(*) AS job_count 
FROM jobanalysisdata 
GROUP BY company 
ORDER BY job_count DESC;
SELECT location, COUNT(*) AS total_jobs 
FROM jobanalysisdata 
GROUP BY location 
ORDER BY total_jobs DESC;
SELECT job_title, company, salary_max 
FROM jobanalysisdata 
ORDER BY CAST(REPLACE(salary_max, ' LPA', '') AS UNSIGNED) DESC 
LIMIT 5;
SELECT AVG(CAST(REPLACE(salary_max, ' LPA', '') AS UNSIGNED)) AS avg_salary_lpa 
FROM jobanalysisdata;
SELECT skills_required, COUNT(*) AS demand 
FROM jobanalysisdata 
GROUP BY skills_required 
ORDER BY demand DESC 
LIMIT 10;
SELECT experience, COUNT(*) AS num_jobs 
FROM jobanalysisdata 
GROUP BY experience 
ORDER BY num_jobs DESC;
SELECT remote_option, COUNT(*) AS total_jobs 
FROM jobanalysisdata 
GROUP BY remote_option;
SELECT company_size, COUNT(*) AS total_jobs 
FROM jobanalysisdata 
GROUP BY company_size 
ORDER BY total_jobs DESC;

