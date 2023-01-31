-- Create Table Users
Create Table users 
(UserID int NOT NULL,
UserName varchar(250),
password varchar(55),
FullName varchar(255),
Useremail varchar(200),
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

-- Insert values into the user table

Insert into users values (101,'Furshana','Furshana@1007','furshanafathima','furshasmafy@gmail.com',100,'CSE');
Insert into users values (102,'Narmadha','narmadha@2219','NarmadhaBE','narmadha22@gmail.com',100,'ECE');
Insert into users values (103,'Uma','uma@2210','Umaodessa','umaodessa@gmail.com',100,'It');

-- INsert values into the productmaster table

Insert into ProductMaster values(22,'Books',500);
Insert into ProductMaster values(33,'Pen',1000);
Insert into ProductMaster values(44,'Paper',1020);
Insert into ProductMaster values(55,'Ball','1050');
Insert into ProductMaster values(66,'Eraser','5000');

Select * from productMAster where availableQTY in (500,1000,1020) ;availableQTy=200  or availableQty=500 or availableQTY =1020;

Select * from ProductMaster where availableQty!=500;

Select * from productMaster where availableQTY in (300,500,1000) ;

Select * from ProductMaster where AvailableQty not in (500,1020,1050);

Select * from users where userName like '_a%';

Select * from users where username like '%a%';

Select * from Users where useremail like '%gmail%';



Select * from ProductMaster;

 
Select Max(AvailableQTY) as Max_Qty from productmaster;


Select Min(Availableqty) as Min_Qty  from ProductMaster;


Select Sum(AvailableQty) as TotalSum from ProductMaster;

 
Select Count(*) as TotalCount from ProductMaster;

 
Select Count(AvailableQTY) as TotalCount from ProductMaster;

 
Select Avg(AvailableQTY) from ProductMaster;



-- Alter table with default and check constraints

alter Table Users add constraint df_category Default 'Admin' for category;

select * from Users;
insert into Users(Username,FullName,Password,IsActive) values ('furshana','furshanafathima','1007',0);

delete Users where UserId=10;

alter Table Users add check (Age>=20);



-- 2nd Question
select * from Countries;
select state from location where country_id='CA';


-- 1stQuestion
SELECT id, street_address,SUBSTRING(street_address,1,1)AS first_word
FROM location 
ORDER BY first_word ASC;

-- 10th Question
select * from location;
select id,street_address,Reverse(SUBSTRING(Reverse(street_address),1,CHARINDEX(' ',street_address))) as 'last_word' from location order by last_word asc;

-- 11th Question
select first_name,concat('$$$$$ ',salary) as salary from employee order by first_name asc;

-- 13th Question
select first_name,right(phone_number,5) as phoneno from employee order by first_name asc;

-- 9th question
select * from Countries;
select * from Region; -- Europe -> id=1
select name from Countries where region_id=1 order by name asc;

