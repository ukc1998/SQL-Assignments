-- Q-17. Write an SQL query to show the top n (say 10) records of a table.

# SOlution:
delimiter //
create procedure top_n_records(in n int)
BEGIN
select * from worker limit n;
END 
// delimiter ;

call top_n_records(5);



-- Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.

# SOlution:
delimiter //
create procedure nth_highest_sal(in n int)
BEGIN
select * from (select salary, first_name, dense_rank() over(order by salary desc) as rn from worker) subquery where rn = n;
END 
// delimiter ;

call nth_highest_sal(5);