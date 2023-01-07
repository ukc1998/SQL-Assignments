-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

# Solution:
select RTRIM(FIRST_NAME) From worker;

-- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

# Solution:
select department, character_length(department) from(select distinct department from worker) subquery;

# Alternative solution:
select department, length(department) from(select distinct department from worker) subquery;



-- Q-3. Write an SQL query to fetch nth max salaries from a table.
delimiter //
create procedure nth_max_sal(in n int)
BEGIN
select * from (select salary, first_name, dense_rank() over(order by salary desc) as rn from worker) subquery where rn = n;
END 
// delimiter ;

call nth_max_sal(5);