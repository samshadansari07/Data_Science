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

-- 1. Display customer name and their sales representative’s
-- first name.
select customername, firstname from customers c inner join employees e
on c.salesrepemployeenumber = e.employeenumber;

-- 2. List order number and order date along with the
-- customer name.

select customername, ordernumber , orderdate from customers inner join orders 
using(customernumber);

-- 3. Show employee first name, last name, and office city.
select concat(firstname," ",lastname) as empfillname , city from employees inner join offices
using(officecode);

-- 4. Display product name and product line.. 
select productname , productline from products;

-- 5. Show order number and product code from order
-- details.
select ordernumber , productcode from orderdetails inner join products
using(productcode);

-- 6. List customer name and check number for each
-- payment.

select customername , checknumber from customers inner join payments 
using(customernumber);

-- 7. Display product name and buy price.  
select productname , buyprice from products ;

-- 8. Show employee name and job title along with their
-- office country.
select concat(firstname ," ",lastname)as empfullname,
jobtitle , country from employees inner join offices 
using(officecode);

-- 9. Display order number, product name, and quantity
-- ordered.

select ordernumber , productname, quantityordered from orders inner join
orderdetails using(ordernumber) inner join products using(productcode);

-- 10. Show customer name, order number, and order
-- status for only Shipped orders.

select customername, ordernumber, status from orders inner join customers 
using(customernumber) where status = "shipped";






 













