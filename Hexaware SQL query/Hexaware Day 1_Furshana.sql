-- Create User Table

Create Table users 
(UserID int NOT NULL,
UserName varchar(250),
password varchar(55),
FullName varchar(255),
IsActive bit,
category varchar(50),
Primary key(UserID)
);

-- Create Productmaster
Create Table ProductMaster(
productid int NOT NULL,
productName varchar(50),
AvailableQty bigint,
Primary key(productid)
); 

-- Create Tansaction 
Create Table Transactions (
TransactionsId int NOT NULL,
Transactiondate date,
ProductId int,
TransactionType varchar(50),
Qty int,
UpdatedBy int,
primary key(TransactionsId)
);

-- Insert values into the user table

Insert into users values (101,'Furshana','Furshana@1007','furshanafathima',100,'CSE');
Insert into users values (102,'Narmadha','narmadha@2219','NarmadhaBE',100,'ECE');
Insert into users values (103,'Uma','uma@2210','Umaodessa',100,'It');


-- INsert values into the productmaster table

Insert into ProductMaster values(22,'Books',10);
Insert into ProductMaster values(33,'Pen',20);
Insert into ProductMaster values(44,'Paper',30);

-- Insert values into Transaction values
Insert into Transactions values('21.02.2001',22,'in',31,1,1);
Insert into Transactions values('13.03.2001',33,'in',32,2,2);
Insert into Transactions values('10.07.2001',44,'in',33,3,3);

-- Alter table by adding column

Alter table users Add phoneno int;
Alter table users Add Address varchar(50);
Alter table users Add city varchar(50); 

-- Alter table by adding new column

Alter table users Drop column FullName;
Alter table Productmaster Drop column ProductName;
Alter table users Drop column Password;


-- Upadte table by setting field

update Users set category='Developer' where UserId=101;
update Users set category='Delivery' where UserId=102;
update Users set category='customer' where UserId=103;

-- Select users from The table

Select * from users;
select UserName,category from users;
select distinct username,category from users;

-- Select values from Product master
Select * from ProductMaster;
Select * from ProductMaster where availableqty<2;
Select * from ProductMaster where availableqty>10;
Select * from ProductMaster where availableqty>20;
