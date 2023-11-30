
/*--cau 1*/
SELECT * 
FROM customers 
WHERE city IN ('Nantes', 'Lyon');

SELECT *
FROM customers
WHERE  city = "Nantes" OR city = "Lyon";

/*--cau 2*/
SELECT * 
FROM orders
WHERE shippedDate BETWEEN '2003-01-10' AND '2003-03-10';

SELECT * 
FROM orders
WHERE shippedDate >= '2003-01-10' AND shippedDate <= '2003-03-10';

/*--cau 3*/
SELECT * 
FROM productlines
WHERE productLine LIKE '%CARS%';

/*--cau 4*/
SELECT * 
FROM products
ORDER BY quantityinStock DESC limit 10;

