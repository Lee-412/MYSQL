//cau1
SELECT city, COUNT(city) AS number
FROM customers
GROUP BY city


//cau2.1
SELECT COUNT(orderNumber) AS totalOrder 
FROM orders
WHERE YEAR(orderDate) = '2005' AND MONTH(orderDate) = '03' 


//cau2.2
SELECT MONTH(orderDate) AS Month, COUNT(orderNumber) AS numberOrder
FROM orders
WHERE YEAR(orderDate) = '2005' 
GROUP BY Month
HAVING Month

//cau2.3 
SELECT YEAR(orderDate) AS Year,MONTH(orderDate) AS Month, COUNT(orderNumber) AS numberOrder
FROM orders
WHERE YEAR(orderDate) = '2005' OR YEAR(orderDate) = '2004' OR YEAR(orderDate) = '2003'
GROUP BY Year, Month;

//cau3
SELECT orderNumber,  SUM(priceEach * quantityOrdered) AS total
FROM orderdetails
GROUP BY orderNumber
ORDER BY total DESC LIMIT 10;

//cau4

