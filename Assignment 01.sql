-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>

# Solution:

Select FIRST_NAME AS WORKER_NAME from Worker;


-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

# Solution:

Select distinct(DEPARTMENT) from Worker;

# Alternative solution:
Select distinct DEPARTMENT from Worker;


-- Q-3. Write an SQL query to show the last 5 record from a table.

# Solution:

select * from worker order by worker_id desc limit 5;