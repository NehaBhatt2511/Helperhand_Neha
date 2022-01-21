Create database Helperland_database

use Helperland_database
go
 
create schema Helperland
go

Create table Helperland.LogIn_table
(
Email nvarchar(30) not null primary key,
Password nvarchar(10) not null
)
create table Helperland.customerReg
( 
FirstName nvarchar(20) not null,
LastName nvarchar(20),
Email nvarchar(30) not null primary key foreign key references Helperland.LogIn_table,
Mobile decimal(10,0) not null,
Password nvarchar(10) not null
)

create table Helperland.ServiceProviderReg
( 
FirstName nvarchar(20) not null,
LastName nvarchar(20),
Email nvarchar(30) not null primary key foreign key references Helperland.LogIn_table,
DOB date ,
Mobile decimal(10,0) not null,
Password nvarchar(10) not null,
Gender tinyint,
IsVaccinated tinyint,

)

create table Helperland.ServiceManagemnt
(
ServiceId int not null primary key,
CustomerId int  unique not null,
ServiceProviderId int unique not null,
CustomerAddress nvarchar(200),
PostalCode int not null,
RequstedServices nvarchar(100),
Date_time_cus datetime,
Reschedule_data datetime,
Cancel_detail nvarchar(200),
Payment tinyint,
StatusOfRequest tinyint,
)

create table Helperland.address
(
HouseNo int not null,
AddressLine1 nvarchar(50) not null,
AddressLine2 nvarchar(50),
Postalcode int,
Landmark nvarchar(50),
City nvarchar(20)
)

create table Helperland.Blocked_cus
(
CustomerId int not null,
ServiceId int not null foreign key references Helperland.ServiceManagemnt,
ServiceProviderId int not null
)

