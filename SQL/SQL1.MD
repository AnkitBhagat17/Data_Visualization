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

SELECT * FROM sales 
WHERE boxes BETWEEN 0 AND 50 LIMIT 10;

ABove Both Conditions or Queries Are Applicable 

![alt text](image-7.png)

-- WEEKDAY() FUNCTION

SELECT SaleDate, Amount, Boxes, weekday(SaleDate) AS 'Day of Week'
FROM sales  WHERE weekday(SaleDate) = 4;


![alt text](image-8.png)


-- New Table
SELECT * FROM people;

![alt text](image-9.png)

-- TEAM DELISH OR JUCIES
SELECT * FROM people
WHERE team = 'Delish' OR team = 'Jucies' LIMIT 10;

![alt text](image-10.png)

SELECT * FROM people 
WHERE salesperson LIKE 'B%';

![alt text](image-11.png)

SELECT * FROM people 
WHERE salesperson LIKE '%B%' LIMIT 10;

![alt text](image-12.png)

SELECT SaleDate, Amount, 
		CASE	WHEN amount < 1000 THEN 'Under 1K'
				WHEN amount < 5000 THEN 'Under 5K'
				WHEN amount < 10000 THEN 'Under 10K'
			ELSE '10K or more'
		END AS 'Amount Category'
FROM sales LIMIT 10;

![alt text](image-13.png)

SELECT s.SaleDate, s.amount , p.Salesperson, s.SPID, p.SPID
FROM sales s JOIN people p ON p.SPID = s.SPID;

![alt text](image-14.png)

SELECT s.SaleDate, s.amount, pr.product
FROM sales s
LEFT JOIN products pr on pr.pid  = s.pid;

![alt text](image-15.png)

SELECT 
	s.SaleDate, 
	s.amount, 
    p.Salesperson, 
    pr.product, 
    p.team
FROM sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.pid = s.pid;

![alt text](image-16.png)