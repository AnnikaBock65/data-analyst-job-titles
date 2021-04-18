SELECT COUNT(*)
FROM data_analyst_jobs;

__1. How many rows are in the data_analyst_jobs table? 1793 rows. 

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? The company ExxonMobil. 

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location in ('KY', 'TN');

--3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky? 27 in KY OR TN.

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN';

--3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky? 21 in TN.

SELECT COUNT (star_rating)
FROM data_analyst_jobs
WHERE star_rating >= 4;

--4. How many postings in Tennessee have a star rating above 4? 573.

SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--5. How many postings in the dataset have a review count between 500 and 1000? 151.

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location 
ORDER BY AVG(star_rating) desc;

SELECT location AS state, ROUND(AVG(star_rating)) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location 
ORDER BY AVG(star_rating) desc;

--6. Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. 
Which state shows the highest average rating? State NE, avg_rating 4.19.

SELECT DISTINCT(title)
FROM data_analyst_jobs;

--7. Select unique job titles from the data_analyst_jobs table. How many are there? 881.

SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE location in ('CA');

--8. How many unique job titles are there for California companies?

SELECT company, round(avg(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT null
AND star_rating IS NOT null
GROUP BY company;

--9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. 
How many companies are there with more that 5000 reviews across all locations? 40.

SELECT company, round(avg(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT null
AND star_rating IS NOT null
GROUP BY company
ORDER BY avg(star_rating) desc;

--10. Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
Unilever with 4.20.

SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

SELECT distinct(title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

-- 11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 1636/754.

SELECT distinct(title)
FROM data_analyst_jobs
WHERE title NOT LIKE '_A_t_%'
OR title NOT LIKE '_A_s_%';

--12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? 
What word do these positions have in common? 