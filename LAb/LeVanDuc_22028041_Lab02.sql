CREATE DATABASE My_Classicmodels;
USE My_Classicmodels;

CREATE TABLE productlines (
	productLine VARCHAR(50) NOT NULL PRIMARY KEY,
    textDescription VARCHAR(50) ,
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB
);


CREATE TABLE orders (
    orderNumber INT(11) NOT NULL PRIMARY KEY,
   	orderDate DATETIME NOT NULL,
    requiredDate DATETIME NOT NULL,
    shippeDate DATETIME,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customerNumber INT(11) NOT NULL
    );

CREATE TABLE products(
    productCode VARCHAR(15) NOT NULL PRIMARY KEY,
    productName VARCHAR(70) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock SMALLINT(6) NOT NULL,
    buyPrice DOUBLE NOT NULL
    );

CREATE TABLE orderdetails (
    orderNumber INT(11) NOT NULL PRIMARY KEY,
    productCode VARCHAR(15) NOT NULL PRIMARY KEY,
    quantityOrdered INT(11) NOT NULL,
	priceEach DOUBLE NOT NULL,
    orderLineNumber SMALLINT(6)
    );

