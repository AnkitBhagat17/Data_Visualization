-- JOINS
SELECT * FROM sales;

SELECT * FROM people;

-- JOINS
SELECT s.SaleDate, s.amount , p.Salesperson, s.SPID, p.SPID
FROM sales s JOIN people p ON p.SPID = s.SPID LIMIT 10;

SELECT s.SaleDate, s.amount, pr.product
FROM sales s
LEFT JOIN products pr on pr.pid  = s.pid;

SELECT 
	s.SaleDate, 
	s.amount, 
    p.Salesperson, 
    pr.product, 
    p.team
FROM sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.pid = s.pid;


