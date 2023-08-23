create database Company

CREATE TABLE Employees(
 Id int PRIMARY KEY IDENTITY,
 name NVARCHAR(50) NOT NULL,
 SurName NVARCHAR(100) NOT NULL,
 Position NVARCHAR(100) NOT NULL,
 Salary Money 

)

Select AVG(Salary) from Employees 
Select * from Employees where Salary > (Select AVG(Salary) from Employees )
 select max(Salary) maxsalary, min(Salary) minsalary from Employees
   
