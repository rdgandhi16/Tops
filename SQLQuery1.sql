create database sql_assignment;

use sql_assignment
create table tblProducts(  ProductID int primary key identity(1,1),
 ProductName varchar(20), 
 RecomendedPrice Varchar(30), category varchar(50))

drop table tblProducts

create Table tblCustomers(CustomerID int primary key identity(1,1), 
FirstName varchar(50), LastName Varchar(50), city varchar(50), 
State varchar(2),Zipcode varchar(10) )

drop table tblSales
Create table tblSales (salesId int primary key identity(1,1), 
ProductID int references tblProducts(ProductID),
CustomerID int references tblCustomers(CustomerID), 
SalesPrice varchar(50), Salesdate varchar(50))

insert into tblProducts  values ('DVD','105.00','LivingRoom') 
insert into tblProducts Values ('Microwave','98.00','Kitchen')
insert into tblProducts Values ('Monitor','200.00','Office')
insert into tblProducts Values ('Speakers','85.00','Office')
insert into tblProducts Values ('Refrigerator','900.00','Kitchen')
insert into tblProducts Values ('VCR','165.00','Living Room')
insert into tblProducts Values ('CoffeePot','35.00','Kitchen')
update tblProducts set RecomendedPrice='165.00' where ProductID=6;
update tblProducts set category='LivingRoom' where ProductID=6;
update tblProducts set ProductName='VCR' where ProductID=6;
select *from tblProducts 




insert into tblCustomers values ('Chintan', 'Patel', 'Anand','GJ','388001')
insert into tblCustomers values ('Paresh', 'Prajapati', 'Nadiad','GJ','387001')
insert into tblCustomers values ('Pragnesh', 'Patel', 'Surat','GJ','395008')
insert into tblCustomers values ('Nilesh', 'Dharsandia', 'Mumbai','MH','400002')
insert into tblCustomers values ('Sonal', 'Patel', 'Mumbai','MH','388001')
insert into tblCustomers values ('Harshal', 'Patel', 'Mogri','GJ','388345')
insert into tblCustomers values ('Prakash', 'Rathod', 'Mogri','GJ','388001')
insert into tblCustomers values ('Arzoo', 'Dodhiya', 'Rajkot','GJ','360003')
insert into tblCustomers values ('Heta', 'Dave', 'varasani','UP','221002')
insert into tblCustomers values ('Nikita', 'Dave', 'varasani','UP','221002')
insert into tblCustomers values ('Vaibhav', 'Dave', 'varasani','UP','221002')
insert into tblCustomers values ('Paresh', 'Patel', 'Pune','MH','411001')
insert into tblCustomers values ('Prakash', 'Patel', 'Pune','MH','411001')
insert into tblCustomers values ('Sandhya', 'Patel', 'Hyedrabad','AP','500031')
insert into tblCustomers values ('Paresh', 'Patel', 'Pune','MH','411001')
insert into tblCustomers values ('Prakash', 'Patel', 'Pune','MH','411001')
insert into tblCustomers values ('Priyanka', 'Rana', 'Anand','GJ','388001')
insert into tblCustomers values ('Sanket', 'Dhebar', 'V.V.Nagar','GJ','388121')
insert into tblCustomers values ('Puja', 'Shah', 'varasani','UP','221002')
insert into tblCustomers values ('Priya', 'Shah', 'varasani','UP','221002')

insert into tblSales values(1,1,'130.00','2005-06-14') 
insert into tblSales values(2,2,'97.00','2005-06-19') 
insert into tblSales values(3,3,'200.00','2005-09-20') 
insert into tblSales values(4,4,'80.00','2005-03-22')
insert into tblSales values(5,5,'899.00','2005-01-23') 
insert into tblSales values(6,6,'150.00','2005-03-24') 
insert into tblSales values(3,7,'209.00','2005-03-10')
insert into tblSales values(4,8,'90.00','2005-08-11')
insert into tblSales values(6,9,'130.00','2005-08-12')
insert into tblSales values(2,14,'85.00','2005-12-13')
insert into tblSales values(3,15,'240.00','2005-05-14')
insert into tblSales values(1,17,'87.00','2005-07-19')
insert into tblSales values(2,18,'99.00','2005-09-20')
insert into tblSales values(6,19,'150.00','2005-07-22')
insert into tblSales values(5,5,'900.00','2005-03-06')
insert into tblSales values(4,6,'86.00','2005-04-07')
insert into tblSales values(2,7,'88.00','2005-11-08')
insert into tblSales values(3,8,'198.00','2005-05-09')
insert into tblSales values(1,9,'150.00','2005-10-10')
insert into tblSales values(6,14,'99.00','2005-05-09')
insert into tblSales values(6,15,'104.00','2005-09-20')
insert into tblSales values(4,14,'90.00','2005-07-22')
insert into tblSales values(1,1,'130.00','2005-03-06')
insert into tblSales values(2,2,'102.00','2005-04-07')
insert into tblSales values(1,3,'114.00','2005-11-08')
insert into tblSales values(5,4,'1000.00','2005-05-09')
insert into tblSales values(5,5,'1100.00','2005-10-10')
insert into tblSales values(3,6,'285.00','2005-06-11')
insert into tblSales values(2,7,'87.00','2005-10-12')
insert into tblSales values(3,8,'300.00','2005-07-13')
insert into tblSales values(3,20,'205.00','2005-12-31')


select *from tblProducts 
select *from tblCustomers
select FirstName,LastName,Product Name, Sale Price from tblCustomers and 
