-- Q-13. Write an SQL query to show only odd rows from a table.

# Solution:
select * from worker where mod(worker_id, 2) = 1;



-- Q-14. Write an SQL query to clone a new table from another table.

# Solution:
create table new_clone_table_worker like worker; -- cloning just the structure
insert into new_clone_table_worker select * from worker; -- cloning the records


# Alternative solution: 
create table new_clone_table_worker_2 as select * from worker;