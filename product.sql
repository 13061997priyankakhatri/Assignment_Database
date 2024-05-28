USE Priyanka;

CREATE TABLE product(
    PRO_ID INT PRIMARY KEY,
    PRO_NAME VARCHAR(100),
    PRO_PRICE DECIMAL(10, 2),
    PRO_COM VARCHAR(10)
);

INSERT INTO product("PRO_ID", "PRO_NAME", "PRO_PRICE", "PRO_COM") VALUES 
(101,'Mother Board',3200.00,15),
(102,'Keyboard',450.00,16),
(103,'Zip Drive',250.00,14),
(104,'Speaker',550.00,16),
(105,'Moniter',5000.00,11),
(106,'DVD Drive',900.00,12),
(107,'CD Drive',800.00,12),
(108,'Printer',2600.00,13),
(109,'Refill cartridge',350.00,13),
(110,'Mouse',250.00,12);

SELECT * FROM product;

SELECT PRO_NAME, PRO_PRIC FROM product WHERE PRO_PRICE >= 250 ORDER BY PRO_PRICE DESC, PRO_NAME ASC; 
/* (1) Write sql query to find the items whose prices are higher than or equal 250rs. Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price */

SELECT PRO_NAME, PRO_PRICE FROM product ORDER BY PRO_PRICE ASC LIMIT 1;  /* (2) Write a sql query to find the cheapest item. Return pro_name and pro_price. */

SELECT PRO_COM, AVG(PRO_PRICE) AS avg_price FROM product GROUP BY PRO_COM;  /* (3) Write the sql query to calculate the average price of the items for each company. Return average price and company code. */

SELECT AVG(PRO_COM) AS avg_total_price FROM product; /* (4) Write the sql query to find the average total for all the product mention in the table  */