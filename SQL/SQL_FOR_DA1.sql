SELECT * FROM sales;

SELECT SaleDate, Amount, Customers FROM sales;

SELECT Amount,Customers,GeoID FROM sales;

SELECT SaleDate, Amount, Boxes, Amount/Boxes FROM sales

SELECT SaleDate, COUNT(*) AS duplicate_count
FROM sales
GROUP BY SaleDate
HAVING COUNT(*) > 1;

SELECT SaleDate , Amount, Boxes, Amount / boxes as 'Amount per box' from sales;


SELECT * FROM sales
WHERE amount > 20000 LIMIT 10 ;

SELECT * FROM sales
WHERE amount > 20000 ORDER BY amount LIMIT 10;

SELECT * FROM sales
WHERE geoid = 'g1'
ORDER BY PID, Amount DESC;

SELECT * FROM sales
WHERE amount > 10000 AND SaleDate >= '2022-01-01';
