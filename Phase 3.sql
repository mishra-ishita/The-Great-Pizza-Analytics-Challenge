-- Phase 3: Sales Performance

-- 1. Total quantity of pizzas sold (`SUM`).
SELECT SUM(quantity) AS total_pizzas_sold FROM order_details;

-- 2. Average pizza price (`AVG`).
SELECT AVG(price) AS avg_pizza_price FROM pizzas;

-- 3. Total order value per order (`JOIN`, `SUM`, `GROUP BY`).
SELECT o.order_id, SUM(od.quantity * p.price) AS total_order_value FROM orders o JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id GROUP BY o.order_id ORDER BY total_order_value DESC ;

-- 4. Total quantity sold per pizza category (`JOIN`, `GROUP BY`).
SELECT pt.category, SUM(od.quantity) AS total_quantity_sold FROM order_details od JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id GROUP BY pt.category;

-- 5. Categories with more than 5,000 pizzas sold (`HAVING`).
SELECT pt.category, SUM(od.quantity) AS total_quantity_sold FROM order_details od JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id GROUP BY pt.category HAVING SUM(od.quantity) > 5000;

-- 6. Pizzas never ordered (`LEFT/RIGHT JOIN`).
SELECT p.pizza_id, p.size, p.price FROM pizzas p LEFT JOIN order_details od ON p.pizza_id = od.pizza_id WHERE od.pizza_id IS NULL;

-- 7. Price differences between different sizes of the same pizza (`SELF JOIN`).
SELECT p1.pizza_type_id, p1.size AS size1, p1.price AS price_1, p2.size AS size2, p2.price AS price_2, p1.price - p2.price AS price_difference
FROM pizzas p1 JOIN pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id WHERE p1.size <> p2.size ORDER BY p1.pizza_type_id;

