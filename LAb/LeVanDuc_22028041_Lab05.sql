//Cau1
SELECT SUBSTRING(productDescription, 1, 50) AS "Title of products"
FROM products;

//cau2
SELECT CONCAT_WS(". ",CONCAT(lastName,firstName),jobTitle) AS desriptions
FROM employees;

//cai