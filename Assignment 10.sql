-- Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

# Solution:

select concat(first_name, " ", last_name) as worker_name, salary 
from( select *, dense_rank() over(order by salary desc) as rn  
		from worker) subquery
where rn = 5;



-- Q-20. Write an SQL query to fetch the list of employees with the same salary.

# Solution:
Select distinct w1.worker_id, concat(w1.first_name, " ", w1.last_name) as `name` , w1.salary 
from worker w1, worker W2 
where w1.salary = w2.salary  and w1.worker_id != w2.worker_id
order by w1.worker_id;
