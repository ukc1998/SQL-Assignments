-- Q-15. Write an SQL query to fetch intersecting records of two tables.

# Solution:
SELECT w.* FROM worker w
inner join new_clone_table_worker n 
on w.worker_id = n.worker_id;




-- Q-16. Write an SQL query to show records from one table that another table does not have.

# Solution:
select * from worker where not exists (select * from new_clone_table_worker);


# Alternative solution:
select * from worker where worker_id not in (select worker_id from new_clone_table_worker);