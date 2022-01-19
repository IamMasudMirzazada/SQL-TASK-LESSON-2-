CREATE DATABASE MARKET

USE MARKET

CREATE TABLE PRODUCTS (
Id int primary key identity ,
Name nvarchar(100),
Price money
)

ALTER TABLE PRODUCTS ADD Brand char(100)
 
 INSERT INTO PRODUCTS VALUES ('E-class',175,'Mercedes'),('Accent',750,'Hyundai'),('M5',1075,'Bmw'),('OPTIMA',1850,'Kia'),('Galendewagen',6500,'Mercedes'),('Cayenne',7250,'Porsche'),('Vogue',1075,'Range-Rover'),('Polo',3950,'Wolkswagen'),('X5',7475,'Bmw'),('Rio',890,'Kia'),('Camry',2075,'Toyota'),('Prado',4750,'Toyota'),('Cruze',3687,'Chevrolet'),('Patrul',6890,'Nissan')
 INSERT INTO PRODUCTS VALUES ('Octavia',5,'Skoda'),('niva',8,'lada')

 SELECT * from PRODUCTS WHERE Price < (SELECT AVG(Price)from PRODUCTS) 

 SELECT * from PRODUCTS WHERE Price>10

 SELECT (Name + ' ' + Brand) 'Product Info' FROM PRODUCTS WHERE LEN(BRAND)>5