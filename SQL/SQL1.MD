SELECT * FROM sales;



![alt text](image-3.png)

SELECT SaleDate, Amount, Customers FROM sales;

![alt text](image-1.png)

SELECT Amount,Customers,GeoID FROM sales;

![alt text](image-2.png)

SELECT SaleDate, Amount, Boxes, Amount/Boxes FROM sales;

![alt text](image-4.png)


SELECT SaleDate , Amount, Boxes, Amount / boxes as 'Amount per box' from sales;

![alt text](image-5.png)


SELECT * FROM sales
WHERE amount > 20000 LIMIT 10;

![alt text](image-6.png)


SELECT * FROM sales
WHERE boxes > 0 AND boxes <= 50 LIMIT 10;

![alt text](image-7.png)