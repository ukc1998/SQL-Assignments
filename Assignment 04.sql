-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

# Solution:
select replace( first_name,  "a",  "A") as modified_first_name from worker;



-- Q-2. Write an SQL query to print all Worker details from the Worker table order by
--      FIRST_NAME Ascending and DEPARTMENT Descending.

# Solution:

select * from worker
order by first_name asc, department desc;



-- Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

# Solution:

select FIRST_NAME, LAST_NAME from worker
where salary = (select max(SALARY) from worker);