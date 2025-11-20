-- Phase 1: Foundation & Inspection

-- 1. Install IDC_Pizza.dump as IDC_Pizza server
SELECT * FROM order_details;
SELECT * FROM orders;
SELECT * FROM pizza_types;
SELECT * FROM pizzas;
-- 2. List all unique pizza categories (`DISTINCT`).
SELECT DISTINCT category AS pizza_categories FROM pizza_types;

-- 3. Display `pizza_type_id`, `name`, and ingredients, replacing NULL ingredients with `"Missing Data"`. Show first 5 rows.
SELECT pizza_type_id,name, COALESCE(ingredients, 'Missing Data') AS ingredients FROM pizza_types LIMIT 5;

-- 4. Check for pizzas missing a price (`IS NULL`).
SELECT * FROM pizzas WHERE price IS NULL;

