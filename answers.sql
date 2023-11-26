-- Question01(Mounika)
-- problem01 query need to write it alphabetical order

SELECT email FROM customers ORDER BY email ASC;


---problem 03
SELECT SUM(num_cupcakes) from orders where processed = false;


--problem 04
SELECT name, sum(num_cupcakes) FROM orders right join cupcakes on orders.cupcake_id = cupcakes.id group by cupcakes.name order by name ASC;


--problem 05
SELECT customers.email, sum(num_cupcakes) FROM orders join customers on orders.customer_id = customers.id group by customers.email order by sum DESC;


--problem 06
SELECT DISTINCT fname, lname, email FROM customers join
	orders on customers.id = orders.customer_id join
	cupcakes on orders.cupcake_id = cupcakes.id where 
	cupcakes.name= 'funfetti' and orders.processed = true;