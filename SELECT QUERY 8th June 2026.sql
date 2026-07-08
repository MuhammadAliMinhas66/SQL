------------------------------ SELECT , FROM AND WHERE --------------------------
-- retrieving all the customers data from customers table
SELECT * 
FROM customers;

-- retrieving all the orders from orders table
SELECT * 
FROM orders;

-- retrieving the specific columns data
/* here it is doing is first executing the FROM statement , it will take the customers table into results and then it will
	look up for the SELECT statement that which columns to add or remove from results ( table )
	it will take the first_name and country column and exclude the id and score column(data)
*/
SELECT 
	first_name, 
	country
FROM customers;

-- We can select the columns which to come first on the base of our own choice 

SELECT 
	country,
	score,
	first_name
FROM customers;

-- WHERE Clause
-- the execution of below statement is the sql starts from 
-- (1) [FROM CLAUSE] that it will take the data of (everything) customers table into result
-- (2) [WHERE CLAUSE] and then it will put on a condition that whom score is > 500 
-- it will inclue all those entries with score greater than 500 into result( keep them in result) 
-- and exclude all the other entries that doesnot have score > 500
-- (3) then it will [SELECT] the columns which user has asked to get that data from the query ( first_name and score ) from the whole table
-- it will give the output of only these specific columns and exclude all other columns 
SELECT 
	first_name,
	score
FROM customers
WHERE score>500;

/* V TASK 
Retrive customers with a score not equal to 0
*/
SELECT * 
FROM customers
WHERE score != 0 ;

/* V TASK 
Retrieve customers from germany
*/
-- characters are closed inside '' and numbers are without this
SELECT * 
FROM  customers
WHERE country = 'germany';

-- only show the first_name and country with above condition
SELECT 
first_name,
country
FROM customers
WHERE country = 'Germany';

-- score = 500 and display only score column
SELECT
	score
FROM customers
WHERE score = 500;

-----------------------------------------------------------------------
-- OrderBy
/* it is used to sort our data ---> ASC ( from lowest to highest value )
                               |         
							   ---> DESC ( from highest to lowest )
   the syntax for orderby is : 
   SELECT * 
   FROM customers
   ORDER BY (Column Na me (on which basis of column should it sort) ) then ASC/DESC 
   when we dont specify the ASC or DESC 
   the SQL by default does ASC, so it doesnot gives any errors
   */
-- ASC
SELECT 
	   first_name,
	   score
FROM customers 
ORDER BY score ;    

-- DESC
SELECT 
first_name,
score
FROM customers
ORDER BY score DESC;

-- ASC by writing ASC as it has by default ASC we dont have to specify ASC
SELECT * 
FROM customers
ORDER BY score ASC;

-- we can also put ASC AND DESC ORDER BY on words ( columns also )
SELECT 
first_name
FROM customers
ORDER BY first_name DESC;