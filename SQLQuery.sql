create database Rinkal_DB
use Rinkal_DB

create table tblProducts (ProductID int primary key Identity(1,1),ProductName varchar(50),RecommendedPrice int, Category varchar(50))
create table tbl_customer

--truncate table tblProducts--select *from tblProducts--drop table tblProducts

select ProductID, ProductName from tblProducts
insert into tblProducts (ProductName, RecommendedPrice, Category) values ('DVD','105','LivingRoom')
insert into tblProducts(ProductName, RecommendedPrice, Category) values ('Mmicrowave','98','Kitchen')
insert into tblProducts (ProductName, RecommendedPrice, Category) values ('Monitor','200','Office')

create table tblCustomers ( CustomerId int Primary key identity(1,1),FirstName varchar(50),LastName varchar(50),City varchar(50),State varchar(50),Zip varchar(50))
--select *from tblCustomers

insert into tblCustomers (FirstName, LastName, City, State, Zip) values ('Chintan','Patel','Anand','GJ','388001')
insert into tblCustomers (FirstName, LastName, City, State, Zip) values ('Paresh','Prajapati','Nadiad','GJ','387001')
insert into tblCustomers (FirstName, LastName,City, State, Zip) values ('Pragnesh','Patel','Surat','GJ','395008')

create table tblSales (SalesId int primary Key identity(1,1),ProductID int References tblProducts(ProductID), CustomerID int references tblCustomers(CustomerId),SalesPrice int, SalesDate varchar(50))
--select *from tblSales

insert into tblSales (ProductID, CustomerID,SalesPrice, SalesDate) values ('1','1','130','2005-06-14')
insert into tblSales (ProductID, CustomerID, SalesPrice, SalesDate) values ('2','2','97','2005-06-19')
insert into tblSales (ProductID, CustomerID, SalesPrice, SalesDate) values ('3','3','200','2005-09-20')
--select tblCustomers.FirstName,tblCustomers.LastName,tblProducts.ProductName,SalesDate from tblSales join tblCustomers on tblCustomers.CustomerID=tblSales.CustomerID join tblProducts on tblProducts.ProductID=tblSales.ProductID where tblSales.SalesDate like '_____10___'


select tblCustomers.FirstName,tblCustomers.LastName,tblProducts.ProductName,SalesDate from tblSales join tblCustomers on tblCustomers.CustomerId=tblSales.CustomerID join tblProducts on tblProducts.ProductID=tblSales.ProductID where SalesDate like '____-10-__' 

select CustomerId, FirstName, LastName  from tblCustomers where CustomerId not in (select CustomerID from tblSales)

select tblCustomers.FirstName, tblCustomers.LastName, tblProducts.RecommendedPrice,SalesPrice, ABS (tblProducts.RecommendedPrice-SalesPrice) as Differance from tblSales
join tblCustomers on tblCustomers.CustomerId=tblSales.CustomerID
join tblProducts on tblProducts.ProductID=tblSales.ProductID 

select tblSales.ProductID ,AVG(tblSales.SalesPrice) as Average from tblSales
join tblProducts on tblProducts.ProductID=tblSales.ProductID
group by tblSales.ProductID 

select tblSales.CustomerID, AVG(tblSales.SalesPrice) as Average from tblSales
group by tblSales.CustomerID Having COUNT(tblSales.CustomerID)>2

update tblSales set SalesPrice=tblProducts.RecommendedPrice from tblSales
join tblProducts on tblProducts.ProductID=tblSales.ProductID and
tblSales.SalesDate between '2005-06-10' and '2005-06-20'

select SalesPrice, tblProducts.RecommendedPrice  from tblSales
join tblProducts on tblProducts.ProductID=tblSales.ProductID

