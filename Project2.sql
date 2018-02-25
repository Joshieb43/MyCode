--Joshua Budimir


--CREATE DATABASE
--CREATE DATABASE Cis11170_JoshuaBudimir
 --GO


 --INSERT TABLES INTO DATABASE
USE Cis11170_JoshuaBudimir
GO

CREATE TABLE [dbo].[Workers](
	[ID] [int] NOT NULL identity(1,1) PRIMARY KEY,
	[Job] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Works for ID] [int] NULL,
	[Part or Full Time] [nvarchar](50) NOT NULL,
	[Salary] [nvarchar](50)NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] NOT NULL PRIMARY KEY,
	[ID] [int] NOT NULL FOREIGN KEY(ID) REFERENCES Workers(ID),
	[HomePhone] [nvarchar](50) NOT NULL,
	[CellularPhone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,

) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Addresses](
	[ID] [int] NOT NULL PRIMARY KEY,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[County] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50)NOT NULL,
	)ON [PRIMARY]

GO

CREATE TABLE [dbo].[Weekly](
	[TradeID] [int] NOT NULL PRIMARY KEY,
	[weekly sales] [nvarchar](50) NOT NULL,
	[required weekly in stock] [int] NOT NULL,
	[required weekly orders] [decimal] NOT NULL,
	[shelf life] [nvarchar](50) NOT NULL,
	)ON [PRIMARY]

GO

CREATE TABLE [dbo].[Items](
	[Item] [int] NOT NULL PRIMARY KEY,
	[TradeID] [int] NOT NULL FOREIGN KEY(TradeID) REFERENCES Weekly(TradeID),
	[descriptiom] [nvarchar](50) NOT NULL,
	[purchase price] [nvarchar](50) NOT NULL,
	[sale price] [nvarchar](50) NOT NULL,

) ON [PRIMARY]

GO



CREATE TABLE [dbo].[Depreciation](
	[ValueID] [int] NOT NULL PRIMARY KEY,
	[Quantity] [int] NOT NULL,
	[Depreciation rate] [nvarchar](50) NOT NULL
	)ON [PRIMARY]

GO

CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] NOT NULL PRIMARY KEY,
	[ValueID] [int] NOT NULL FOREIGN KEY(ValueID) REFERENCES Depreciation(ValueID),
	[descriptiom] [nvarchar](50) NOT NULL,
	[initial cost] [decimal] NOT NULL,
	[age] [int] NOT NULL,
	[present cost] [decimal] NOT NULL

) ON [PRIMARY]

GO


--DATA FOR WORKERS
INSERT INTO Workers 
VALUES('ceo','Josh',1,'p','98 per hour')
INSERT INTO Workers 
VALUES('SALES','John',1,'f','68 per hour')
INSERT INTO Workers 
VALUES('SALES','Joseph',1,'f','58 per hour')
INSERT INTO Workers 
VALUES('SALES','Jim',1,'f','38 per hour')

create trigger trigger1
on [dbo].[Workers]
for insert
as 
begin 
set nocount on
end


insert into Contacts
values(3,1,'3133334466','3132223344','joshie@hotmail.com')
insert into Contacts
values(4,2,'3133334566','3132213344','johnny@hotmail.com')
insert into Contacts
values(5,3,'3133334766','3132233344','joey@hotmail.com')
insert into Contacts
values(6,4,'3133334966','3132293344','jimmyy@hotmail.com')

insert into Addresses
values(1,'3523 NOWHERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(2,'3563 HERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(3,'3513 THERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(4,'3593 EVERYWHERE','DEARBORN',40098,'WAYNE','MI','USA')



insert into weekly
values(1,'400 units',400,370.00,'10 days')
insert into weekly
values(2,'300 units',300,270.00,'9 days')
insert into weekly
values(3,'200 units',200,170.00,'8 days')
insert into weekly
values(4,'100 units',100,70.00,'7 days')

insert into Items
values(1,1,'goodies','50 dollars','300 dollars')
insert into Items
values(2,2,'soap','40 dollars','200 dollars')
insert into Items
values(3,3,'towels','30 dollars','100 dollars')
insert into Items
values(4,4,'flowers','20 dollars','70 dollars')


INSERT INTO Depreciation
VALUES(1,1,'5% EACH MONTH')
INSERT INTO Depreciation
VALUES(2,3,'10% EACH MONTH')
INSERT INTO Depreciation
VALUES(3,4,'15% EACH MONTH')
INSERT INTO Depreciation
VALUES(4,5,'20% EACH MONTH')

INSERT INTO Equipment
VALUES(1,1,'FRIDGE',500.00,10,300.00)
INSERT INTO Equipment
VALUES(2,2,'DESK',100.00,10,50.00)
INSERT INTO Equipment
VALUES(3,3,'LIGHT',40.00,10,10.00)
INSERT INTO Equipment
VALUES(4,4,'SHELF',10.00,10,15.00)

/*
SELECT * FROM Equipment
SELECT * FROM Depreciation
select * from Weekly
select * from Addresses
select * from Contacts
select* from Workers
*/

--DROP ALL TABLES

DROP TABLE Contacts
DROP TABLE Addresses
DROP TABLE Equipment
DROP TABLE Depreciation
DROP TABLE Items
DROP TABLE Weekly
drop table Workers

--RE INSERT TABLES	
 --INSERT TABLES INTO DATABASE
USE Cis11170_JoshuaBudimir
GO

CREATE TABLE [dbo].[Workers](
	[ID] [int] NOT NULL identity(1,1) PRIMARY KEY,
	[Job] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Works for ID] [int] NULL,
	[Part or Full Time] [nvarchar](50) NOT NULL,
	[Salary] [nvarchar](50)NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] NOT NULL PRIMARY KEY,
	[ID] [int] NOT NULL FOREIGN KEY(ID) REFERENCES Workers(ID),
	[HomePhone] [nvarchar](50) NOT NULL,
	[CellularPhone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,

) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Addresses](
	[ID] [int] NOT NULL PRIMARY KEY,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[County] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50)NOT NULL,
	)ON [PRIMARY]


GO

CREATE TABLE [dbo].[Weekly](
	[TradeID] [int] NOT NULL PRIMARY KEY,
	[weekly sales] [nvarchar](50) NOT NULL,
	[required weekly in stock] [int] NOT NULL,
	[required weekly orders] [decimal] NOT NULL,
	[shelf life] [nvarchar](50) NOT NULL,
	)ON [PRIMARY]

GO

CREATE TABLE [dbo].[Items](
	[Item] [int] NOT NULL PRIMARY KEY,
	[TradeID] [int] NOT NULL FOREIGN KEY(TradeID) REFERENCES Weekly(TradeID),
	[descriptiom] [nvarchar](50) NOT NULL,
	[purchase price] [nvarchar](50) NOT NULL,
	[sale price] [nvarchar](50) NOT NULL,

) ON [PRIMARY]

GO



CREATE TABLE [dbo].[Depreciation](
	[ValueID] [int] NOT NULL PRIMARY KEY,
	[Quantity] [int] NOT NULL,
	[Depreciation rate] [nvarchar](50) NOT NULL
	)ON [PRIMARY]

GO

CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] NOT NULL PRIMARY KEY,
	[ValueID] [int] NOT NULL FOREIGN KEY(ValueID) REFERENCES Depreciation(ValueID),
	[descriptiom] [nvarchar](50) NOT NULL,
	[initial cost] [decimal] NOT NULL,
	[age] [int] NOT NULL,
	[present cost] [decimal] NOT NULL

) ON [PRIMARY]

GO

--DATA FOR TABLES

INSERT INTO Workers 
VALUES('ceo','Josh',1,'p','98 per hour')
INSERT INTO Workers 
VALUES('SALES','John',1,'f','68 per hour')
INSERT INTO Workers 
VALUES('SALES','Joseph',1,'f','58 per hour')
INSERT INTO Workers 
VALUES('SALES','Jim',1,'f','38 per hour')

create trigger trigger1
on [dbo].[Workers]
for insert
as 
begin 
set nocount on
end


insert into Contacts
values(3,1,'3133334466','3132223344','joshie@hotmail.com')
insert into Contacts
values(4,2,'3133334566','3132213344','johnny@hotmail.com')
insert into Contacts
values(5,3,'3133334766','3132233344','joey@hotmail.com')
insert into Contacts
values(6,4,'3133334966','3132293344','jimmyy@hotmail.com')

insert into Addresses
values(1,'3523 NOWHERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(2,'3563 HERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(3,'3513 THERE','DEARBORN',40098,'WAYNE','MI','USA')
insert into Addresses
values(4,'3593 EVERYWHERE','DEARBORN',40098,'WAYNE','MI','USA')



insert into weekly
values(1,'400 units',400,370.00,'10 days')
insert into weekly
values(2,'300 units',300,270.00,'9 days')
insert into weekly
values(3,'200 units',200,170.00,'8 days')
insert into weekly
values(4,'100 units',100,70.00,'7 days')

insert into Items
values(1,1,'goodies','50 dollars','300 dollars')
insert into Items
values(2,2,'soap','40 dollars','200 dollars')
insert into Items
values(3,3,'towels','30 dollars','100 dollars')
insert into Items
values(4,4,'flowers','20 dollars','70 dollars')


INSERT INTO Depreciation
VALUES(1,1,'5% EACH MONTH')
INSERT INTO Depreciation
VALUES(2,3,'10% EACH MONTH')
INSERT INTO Depreciation
VALUES(3,4,'15% EACH MONTH')
INSERT INTO Depreciation
VALUES(4,5,'20% EACH MONTH')

INSERT INTO Equipment
VALUES(1,1,'FRIDGE',500.00,10,300.00)
INSERT INTO Equipment
VALUES(2,2,'DESK',100.00,10,50.00)
INSERT INTO Equipment
VALUES(3,3,'LIGHT',40.00,10,10.00)
INSERT INTO Equipment
VALUES(4,4,'SHELF',10.00,10,15.00)


SELECT * FROM Equipment
SELECT * FROM Depreciation
select * from Weekly
select * from Addresses
select * from Contacts
select* from Workers

CREATE VIEW PAYROLL
AS SELECT Salary
FROM Workers

SELECT * FROM PAYROLL

--DROP VIEW PAYROLL

create view assets
as select [Depreciation rate] from Depreciation

select * from  assets

--drop view assets

DROP TABLE Contacts
DROP TABLE Addresses
DROP TABLE Equipment
DROP TABLE Depreciation
DROP TABLE Items
DROP TABLE Weekly
drop table Workers
