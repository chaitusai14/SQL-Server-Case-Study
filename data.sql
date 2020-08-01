
--1.) a.)

set dateformat dmy;
GO 
insert into Menu_Items values('Sandwich',99.00,'Yes','2017/03/15','Main Course','Yes','Edit')
insert into Menu_Items values('Burger',129.00,'Yes','23/12/2017','Main Course','No','Edit')
insert into Menu_Items values('Pizza',149.00,'Yes','21/08/2017','Main Course','No','Edit')
insert into Menu_Items values('French Fries',57.00,'No','02/07/2017','Starters','Yes','Edit')
insert into Menu_Items values('Chocolate Brownie',32.00,'Yes','02/11/2022','Dessert','Yes','Edit')
GO

drop table Menu_Items



--1.) b.) Frame SQL query to get all menu items

SELECT * from Menu_Items
Go


--2.) Frame SQL query to display menu items which are active and are beyonf launch date
select ID, Name,Free_Delivery, Price,Category from Menu_Items as Customer_Menu where Active='Yes' and Date_of_Launch < GETDATE()
GO


--3.) a.) Frame SQL query to get menu item data based id
select * from Menu_Items where ID=2
GO


--3.) B.) Frame SQL query to update menu items based on menu item id
UPDATE Menu_Items
set Name = 'Sandwich', Price = 137.00 , Date_of_Launch = '26/12/2017' , Category = 'Starters'
where Id=2
GO


--4.) Inser scripts for adding data into user and cart tables.


insert into User_table values('Sai')
insert into User_table values('Chaitanya')
insert into User_table values('Chambuli')
select * from User_table


insert into Cart_table values(1,1)
insert into Cart_table values(1,2)
insert into Cart_table values(1,3)
insert into Cart_table values(1,5)
insert into Cart_table values(2,1)
insert into Cart_table values(2,4)
select * from Cart_table


--5.)a.) Frame SQL query to get all menu items in a particular user's cart

select Menu_Items.Name, Menu_Items.Free_Delivery, Menu_Items.Price from Menu_Items 
join Cart_table on Menu_Items.Id = Cart_table.id
where Cart_table.user_id = 3

--5.)b.) Frame SQL query to get total price of all menu items in a particular user's cart

select SUM(Menu_Items.Price) as "Total" from Menu_Items join Cart_table on Menu_Items.Id = Cart_table.id
where Cart_table.user_id = 1


--6.) Frame SQL query to remove a menu item in cart based on user id and menu id

delete Cart_table where user_id= 1 and id=5
GO