
-- tasks 
--1
select top 5 * from employees

--2
select distinct productname from products

--3
select * from products
where price > 100

--4
select firstname from customers
where firstname like 'A%'

--5 
select * from products
order by price 

--6
select * from employees
where Salary >= 60000 and Departmentname = 'HR'

--7
update employees
set email = isnull(email,'noemail@example.com')
where email is null

--8
select *from products
where price between 50 and 100

--9
select distinct category  ,productname from products

--10
select distinct category  ,productname from products
order by productname desc

--11
select top 10 * from products 
order by price desc

--12
select coalesce(firstname,lastname) from employees

--13
select distinct category ,price  from products

--14
select * from employees
where (age between 30 and 40) or DepartmentName = 'marketing'

--15
select * from employees
order by salary desc
offset 10 rows fetch next 10 rows only 

--16
select * from products
where price <= 1000 and stockquantity > 50 
order by stockquantity

--17
select * from products
where productname like '%e%'

--18
select *from employees
where departmentname in('HR','IT','FINANCE')

--19
select * from customers
order by city asc , PostalCode desc

--20
select top 10 * from sales 
order by saleamount desc

--21
select concat(FirstName,' ',LastName)as fullname from employees

--22
select distinct category,productname,price from products
where price > 50

--23
select * from products
where price < (select avg(price)*0.1 from products)

--24
select * from employees
where age < 30 and departmentName in('HR','IT')

--25
select * from customers
where email like '%@gmail.com'

--26
select * from employees
where salary > all(select salary from employees where departmentname = 'sales')

--27
select * from orders
where OrderDate between DATEADD(day,-180,GETDATE()) and GETDATE()
