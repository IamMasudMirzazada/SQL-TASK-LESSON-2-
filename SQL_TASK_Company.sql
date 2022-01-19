CREATE DATABASE CompanyDB
USE CompanyDB

CREATE TABLE Employees (
Id int primary key identity,
FullName nvarchar(20) NOT NULL  CHECK(Len(FullName) > 3),
Salary money CHECK(Salary>=0),
DepartmentId int references Departments(Id)
)  

CREATE TABLE Departments (
Id int primary key identity,
Name nvarchar(100) NOT NULL CHECK(LEN(Name) > 2 )

)
 