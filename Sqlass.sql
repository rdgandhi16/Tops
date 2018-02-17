--create database mitesh_sql_ass
--USE mitesh_sql_ass

--create table tblProducts (ProductID int primary key IDENTITY(1,1), ProductName varchar(20), RecommendedPrice int, Category varchar(20))
--create table tblCustomers (CustomerID int primary key IDENTITY(1,1), FirstName varchar(50), LastName varchar(50), City varchar(50), State char(2), Zip varchar(10))
--create table tblSales (SalesID int primary key IDENTITY(1,1), ProductID int references tblProducts(ProductID), CustomerID int references tblCustomers(CustomerID), SalesPrice int, SalesDate varchar(10))

select tblCustomers.FirstName,tblCustomers.LastName,tblProducts.ProductName,SalesDate from tblSales 
join tblCustomers on tblCustomers.CustomerID=tblSales.CustomerID join tblProducts 
on tblProducts.ProductID=tblSales.ProductID where tblSales.SalesDate like '_____10___'

select CustomerID,FirstName,LastName from tblCustomers 
where tblCustomers.CustomerID NOT IN (select tblSales.CustomerID from tblSales)
	
select tblCustomers.FirstName,tblCustomers.LastName,SalesPrice,
tblProducts.RecommendedPrice,
abs (tblProducts.RecommendedPrice-tblSales.SalesPrice) 
AS Diff from tblSales 
join tblCustomers on tblCustomers.CustomerID= tblSales.CustomerID 
join tblProducts on tblProducts.ProductID = tblSales.ProductID 

select tblSales.ProductID , AVG(tblSales.SalesPrice) AS AVRG 
from tblSales 
join tblProducts on tblProducts.ProductID=tblSales.ProductID 
GROUP BY tblSales.ProductID

select tblSales.CustomerID, AVG(tblSales.SalesPrice) AS AVRG 
from tblSales GROUP BY tblSales.CustomerID 
HAVING count(tblSales.CustomerID) > 2 

UPDATE tblSales set tblSales.SalesPrice = tblProducts.RecommendedPrice from tblSales 
inner join tblProducts on tblProducts.ProductID = tblSales.ProductID 
and tblSales.SalesDate Between '2005-06-10' and '2005-06-20'

select tblProducts.ProductID,COUNT(tblSales.ProductID) AS Total_Sales from tblProducts join tblSales on tblSales.ProductID = tblProducts.ProductID group by tblSales.ProductID







create table tblempl (eno int primary key, ename varchar(20),bdate varchar(10),title varchar(20),salary int,dno varchar(2))

create table tblproj(pno varchar(2) primary key, pname varchar(25),budget int, dno varchar(2))

create table tbldepart(dno varchar(2) primary key, dname varchar(30),mgreno int)

create table tblworkson(eno int primary key, pno varchar(2),resp varchar(15),hours int)

--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('1','Chintan','1990-10-14','EEE','10000','D1')
--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('2','Nilesh','1989-09-18','SA','25000','D2')
--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('3','Harshal','1990-09-18','Manager','50000','D1')
--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('4','Heta','1987-01-01','Manager','100000','D3')
--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('5','Nikita','1991-05-10','SE','35000','D3')
--insert into tblempl(eno,ename,bdate ,title,salary,dno) values ('6','Paresh','1985-03-28','Manager','75000','D2')


--insert into tblproj (pno,pname,budget ,dno) values ('1','P1','1500000','D1')
--insert into tblproj (pno,pname,budget ,dno) values ('2','P2','1000000','D2')
--insert into tblproj (pno,pname,budget ,dno) values ('3','P3','3000000','D3')

--insert into tbldepart (dno,dname ,mgreno ) values ('D1','Department 1', '3')
--insert into tbldepart (dno,dname ,mgreno ) values ('D2','Department 2', '4')
--insert into tbldepart (dno,dname ,mgreno ) values ('D3','Department 3', '6')

--insert into tblworkson (eno,pno ,resp ,hours ) values ('1','P1','EEE','15')
--insert into tblworkson (eno,pno ,resp ,hours ) values ('2','P2','SA','20')
--insert into tblworkson (eno,pno ,resp ,hours ) values ('3','P1','Manager','5')
--insert into tblworkson (eno,pno ,resp ,hours ) values ('4','P3','Manager','25')
--insert into tblworkson (eno,pno ,resp ,hours ) values ('5','P3','SE','30')
--insert into tblworkson (eno,pno ,resp ,hours ) values ('6','P2','Manager','50')


select pno,pname from tblproj where budget > '100000'

select * from tblworkson where hours < 10 and resp = 'Manager'

select eno,ename from tblempl where (title = 'EEE' or title='SA') and (salary > '35000')

select ename from tblemp where dno = 'D1' order by salary DESC

select * from tbldept order by dname ASC

select e.ename,d.dname,e.title from tblemp e join tbldept d on e.dno = d.dno 

select tblproj.pno,tblproj.pname,tblworkson.hours from tblworkson join tblproj on tblproj.pname= tblworkson.pno  where tblworkson.hours >10

select tblproj.pname,tbldept.dname,tblproj.budget from tblproj join tbldept on tbldept.dno = tblproj.dno where tblproj.budget>50000

select eno,salary from tblemp order by dno asc,salary desc

select e.ename,p.pname,e.title,w.hours from tblemp e join tblworkson w on e.eno = w.eno join tblproj p on p.pname = w.pno






--create table tblemployee (Emp_code int primary key, Emp_name varchar(1), Manager_code int default Null)

--insert into tblemployee (Emp_code ,Emp_name ,Manager_code ) values ('1','A','2');
--insert into tblemployee (Emp_code ,Emp_name ,Manager_code ) values ('2','B','3');
--insert into tblemployee (Emp_code ,Emp_name ,Manager_code ) values ('3','C','');
--insert into tblemployee (Emp_code ,Emp_name ,Manager_code ) values ('4','D','5');
--insert into tblemployee (Emp_code ,Emp_name ,Manager_code ) values ('5','E','3');

select e.Emp_name , m.Emp_name AS Manager_Name from tblemployee e join tblemployee m on e.Manager_code = m.Emp_code;

