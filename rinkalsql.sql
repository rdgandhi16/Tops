
USE Rinkal_assignment

select tblCustomers.FirstName, tblCustomers.LastName,tblProducts.ProductName,Salesprice from tblSales 
join  tblCustomers on tblCustomers.CustomerID=tblSales.CustomerID 
join tblProducts on tblProducts.ProductID=tblSales.ProductID where tblSales.SalesDate like '_____10___'

select tblCustomers.FirstName,tblCustomers.LastName,tblProducts.ProductName, Salesprice from tblSales
join tblCustomers on tblCustomers.CustomerID=tblSales.CustomerID join tblProducts on
tblProducts.ProductID=tblSales.ProductID where tblSales.SalesDate like '_____10___' 

select tblCustomers.CustomerID,tblCustomers.FirstName, tblCustomers.LastName from tblCustomers where tblCustomers.CustomerID not in (select tblSales.CustomerID from tblSales)

select CustomerID,FirstName,LastName from tblCustomers where tblCustomers.CustomerID NOT IN (select tblSales.CustomerID from tblSales)

	
select tblCustomers.FirstName,tblCustomers.LastName,SalesPrice,
tblProducts.RecommendedPrice,
abs (tblProducts.RecommendedPrice-tblSales.SalesPrice) 
AS Diff from tblSales 
join tblCustomers on tblCustomers.CustomerID= tblSales.CustomerID 
join tblProducts on tblProducts.ProductID = tblSales.ProductID 

select tblSales.ProductID , AVG(tblSales.SalesPrice) AS AVRG from tblSales join tblProducts on tblProducts.ProductID=tblSales.ProductID 
GROUP BY tblSales.ProductID

select tblSales.CustomerID, AVG(tblSales.SalesPrice) AS AVRG from tblSales GROUP BY tblSales.CustomerID HAVING count(tblSales.CustomerID) > 2 

UPDATE tblSales set tblSales.SalesPrice = tblProducts.RecommendedPrice from tblSales 
inner join tblProducts on tblProducts.ProductID = tblSales.ProductID and tblSales.SalesDate Between '2005-06-10' and '2005-06-20'

select tblProducts.ProductID,COUNT(tblSales.ProductID) AS Total_Sales from tblProducts 
join tblSales on tblSales.ProductID = tblProducts.ProductID group by tblSales.ProductID








select pno,pname from tblproj where budget > '100000'

select * from tblworkson where hours < 10 and resp = 'Manager'

select eno,ename from tblempl where (title = 'EEE' or title='SA') and (salary > '35000')

select ename fro--m tblemp where dno = 'D1' order by salary DESC

select * from tbldept order by dname ASC

select e.ename,d.dname,e.title from tblemp e join tbldept d on e.dno = d.dno 

select tblproj.pno,tblproj.pname,tblworkson.hours from tblworkson join tblproj on tblproj.pname= tblworkson.pno  where tblworkson.hours >10

select tblproj.pname,tbldept.dname,tblproj.budget from tblproj join tbldept on tbldept.dno = tblproj.dno where tblproj.budget>50000

select eno,salary from tblemp order by dno asc,salary desc

select e.ename,p.pname,e.title,w.hours from tblemp e join tblworkson w on e.eno = w.eno join tblproj p on p.pname = w.pno








select e.Emp_name , m.Emp_name AS Manager_Name from tblemployee e join tblemployee m on e.Manager_code = m.Emp_code;

