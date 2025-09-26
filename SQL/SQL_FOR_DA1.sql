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


SELECT SaleDate, Amount FROM sales
WHERE amount > 10000 AND YEAR(SaleDate) = 2022 
ORDER BY amount DESC;

SELECT * FROM sales
WHERE boxes > 0 AND boxes <= 50 LIMIT 10;

SELECT * FROM sales 
WHERE boxes BETWEEN 0 AND 50 LIMIT 10;

-- WEEKDAY() FUNCTION
SELECT SaleDate, Amount, Boxes, weekday(SaleDate) AS 'Day of Week'
FROM sales  
WHERE weekday(SaleDate) = 4 LIMIT 10;

SELECT * FROM people;

-- TEAM DELISH OR JUCIES
SELECT * FROM people
WHERE team = 'Delish' OR team = 'Jucies' LIMIT 10;

SELECT * FROM people 
WHERE salesperson LIKE 'B%';

SELECT * FROM people 
WHERE salesperson LIKE '%B%' LIMIT 10;

-- CASE Operator
SELECT * FROM sales;

SELECT SaleDate, Amount, 
		CASE	WHEN amount < 1000 THEN 'Under 1K'
				WHEN amount < 5000 THEN 'Under 5K'
				WHEN amount < 10000 THEN 'Under 10K'
			ELSE '10K or more'
		END AS 'Amount Category'
FROM sales LIMIT 10;







