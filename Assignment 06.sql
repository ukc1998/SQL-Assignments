-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

# SOlution:
SELECT * FROM worker
WHERE MONTHNAME(Joining_date) = "February" AND YEAR(Joining_date) = 2014;

# Alternative Solution:
SELECT * FROM worker WHERE joining_date LIKE "2014-02%";



-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
# Using title table for this question:

# Solution:
select *, count(*) as No_of_rec from title 
group by worker_title, affected_from
having No_of_rec > 1;



-- Q-3. How to remove duplicate rows from Employees table.
# Using employee table for this question:

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, age, salary) VALUES ('John Doe', 25, 50000);
INSERT INTO employees (name, age, salary) VALUES ('John Doe', 25, 50000);
INSERT INTO employees (name, age, salary) VALUES ('Jane Smith', 30, 60000);
INSERT INTO employees (name, age, salary) VALUES ('Jane Smith', 30, 60000);



select * from employees;

# First of all, let us set safe update = 0 because we are going to perform delete operation
SET sql_safe_updates = 0;

# Solution:
DELETE e1 FROM employees e1
INNER JOIN employees e2
WHERE e1.id > e2.id AND e1.name =e2.name;

# Cross verification:
select * from employees;