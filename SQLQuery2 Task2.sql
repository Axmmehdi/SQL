CREATE DATABASE Market

CREATE TABLE Products(
 Id int Primary Key identity,
 Name nvarchar(50) not null,
 Price Money

)

alter table Products add Brand nvarchar(100) not null

select *from Products
Select * from Products where  Price < (Select AVG(Price) from Products )
Select * from Products where Price>10

Select CONCAT(Name,+' '+Brand) Productinfo from Products where len(Products.Brand)>5
