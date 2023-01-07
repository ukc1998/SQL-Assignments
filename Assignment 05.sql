-- Q-1. Write an SQL query to print details of workers excluding 
--      first names, “Vipul” and “Satish” from Worker table.

# Solution:

select *from worker where FIRST_NAME not in("Vipul", "Satish");



-- Q-2. Write an SQL query to print details of the Workers whose 
--      FIRST_NAME ends with ‘h’ and contains six alphabets.

# Solution:

select * from worker where FIRST_NAME like "_____h";




-- Q-3. Write a query to validate Email of Employee.

# Solution:

CREATE TABLE Contacts (EmailAddress VARCHAR(100));

INSERT INTO Contacts (EmailAddress)
SELECT 'first@validemail.com'
UNION ALL
SELECT 'first@validemail'
UNION ALL
SELECT '@validemail.com'
UNION ALL
SELECT 'second@validemail.com'
UNION ALL
SELECT 'firstvalidemail.com';


# To get valid emails:
SELECT EmailAddress AS ValidEmail
FROM Contacts
WHERE EmailAddress LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailAddress) = 0;
        
# To get invalid emails:
SELECT EmailAddress AS NotValidEmail
FROM Contacts
WHERE NOT EmailAddress LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailAddress) = 0;