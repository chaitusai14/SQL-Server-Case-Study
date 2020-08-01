create database truYum;
GO 

create table Menu_Items (
    Id int Identity(1,1) primary key,
    Name varchar(max),
    Price decimal(10,2),
    Active varchar(max),
    Date_of_Launch date,
    Category varchar(max),
    Free_Delivery varchar(max),
    Action varchar(max)
)
GO

create table User_table (
    user_id int Identity(1,1) primary key,
    user_name varchar(max)
)

create table Cart_table (
    cart_id int IDENTITY(1,1) primary key,
    user_id int,
    id int,
    constraint fk_Menu_Items foreign key(id) references Menu_Items(id),
    constraint fk_User_table foreign key(user_id) references User_table(user_id)
)
