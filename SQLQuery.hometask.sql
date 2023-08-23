CREATE DATABASE COMPANY

USE COMPANY

CREATE TABLE Departments(
 Id INT PRIMARY KEY IDENTITY,
 Name NVARCHAR(150) NOT NULL Check(Len(Name) >= 2)
)



CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY,
FullName NVARCHAR(150) NOT NULL Check(Len(FullName) >= 3),
Salary MONEY  CHECK(Salary>0),
Email NVARCHAR(100) Unique Not NUll,
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id)
)

select e.FullName, e.Salary, e.Email, d.Name from Employees e
Join Departments d
ON 
e.DepartmentId=d.Id