-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

# Solution:

select left(first_name,3) from worker;

# Alternative solution:

select substring(first_name,1,3) from worker;



-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first_name column ‘Amitabh’ from Worker table.

# Solution:

select instr(binary first_name, binary "a") from worker where FIRST_NAME = 'Amitabh';

# Alternative solution:

select Locate(binary 'a',binary first_name) from Worker where FIRST_NAME = "Amitabh";

# Alternative solution:

select position(binary 'a' in binary first_name) from Worker where FIRST_NAME = "Amitabh";




-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

# Solution:

with cte as (select concat(first_name, " ", last_name) as employees, 
					department, 
                    salary, 
                    rank() over(partition by department order by salary desc) as rn 
			from worker)
select employees, department, salary
from cte
where rn = 1  ;

# Alternative solution:
SELECT w.first_name,
       w.department,
       w.salary
FROM worker w 
WHERE salary = (select Max(salary) from worker where department = w.department);

# Alternative solution:
SELECT w.first_name,
       w.department,
       w.salary
FROM worker w
WHERE w.salary IN
    (SELECT max(salary)
     FROM worker
     GROUP BY department) ;
