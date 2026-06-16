-- __________________________joins______________________
-- in mysql, A join is used to combine rows from two or more tables based on related column 
-- between them 

-- types of join 
-- 1 cross join 
-- 2. inner join 
-- 3. left join 
-- 4. right join 
-- 5. full join 
-- 6. natural join 
-- 7. self join 

-- cross join 

-- 1.cross join -- A cross join in mysql returns the cartesian products of two tables 
--                 this means every row from the first table is combined with evry row from
-- 				   from the second table .

select * from customers;
select customernumber , customername,ordernumber , orderdate from customers
cross join orders using(customernumber); 

-- q.2 Write a query to display all possible combinations of products and offices. Show:
-- productName
-- city

select city from offices;

select productname, city from products cross join offices;

-- q.2 Write a query to generate every possible combination of customers and product lines. Show:
-- customerName
-- productLine

select customername , productline from customers cross join productlines;

-- q.3 Write a query to list all possible combinations of employees and products. Show:
-- firstName
-- lastName
-- productName

select firstname, lastname , productname from employees cross join products;

-- ___________________inner joins________

-- 















