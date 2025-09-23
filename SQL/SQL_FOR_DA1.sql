SELECT * FROM sales;

SELECT SaleDate, Amount, Customers FROM sales;

SELECT Amount,Customers,GeoID FROM sales;

SELECT SaleDate, Amount, Boxes, Amount/Boxes FROM sales

SELECT SaleDate, COUNT(*) AS duplicate_count
FROM sales
GROUP BY SaleDate
HAVING COUNT(*) > 1;
