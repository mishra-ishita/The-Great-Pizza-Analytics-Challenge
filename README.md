# 🍕 The-Great-Pizza-Analytics-Challenge
# IDC Pizza — Mini Project

A compact SQL + Excel mini-project analyzing pizza sales (IDC_Pizza dataset).
Includes database setup, exploratory SQL, sales performance analysis, and a simple Excel dashboard.

## 🔍 Project Overview
This project inspects and analyzes the IDC_Pizza dataset to understand:

* Product categories
* Pricing
* Order behavior
* Sales performance

Work is split into **three phases**:

1. **Database Setup & Inspection**
2. **Filtering & Exploration**
3. **Sales Performance Analysis**

The project concludes with an Excel dashboard and actionable recommendations.

## 🎯 Objectives
* Clean and inspect the dataset for accuracy
* Explore and filter data using SQL queries
* Analyze sales and pricing with aggregates and joins
* Produce insights and recommendations; build a mini Excel dashboard

## 📦 Dataset (Tables)
* `orders(order_id, date, time)`
* `order_details(order_details_id, order_id, pizza_id, quantity)`
* `pizzas(pizza_id, pizza_type_id, size, price)`
* `pizza_types(pizza_type_id, name, category, ingredients)`

## 🚀 Phases
**Phase 1 — Foundation & Inspection**: Load `IDC_Pizza.dump`, list categories, handle NULLs, check missing prices.
**Phase 2 — Filtering & Exploration**: Date filters, size/price filters, pattern searches (e.g., "Chicken").
**Phase 3 — Sales Performance**: Totals, averages, per-order values, category aggregation, never-ordered items, size price comparisons.

## 📊 Excel Dashboard
* Import all tables into separate sheets and convert each to a Table (`Ctrl+T`)
* Add tables to Data Model (Relationships):
  `orders.order_id → order_details.order_id`
  `pizzas.pizza_id → order_details.pizza_id`
  `pizza_types.pizza_type_id → pizzas.pizza_type_id`

**Dashboard Suggestions**
* KPI Cards: Total Pizzas Sold, Total Orders, Total Revenue, Avg Pizza Price, Top Category
* Charts: Column (sales by category), Pie (category share), Line (sales trend), Bar (top pizzas)
* Slicers: Date, Size, Category, Pizza Type

## 🔑 Key KPIs
* Total Pizzas Sold
* Total Sales Revenue
* Average Order Value (AOV)
* Avg Pizza Price

## ✨ Crisp Insights
* Total pizzas sold: **49,574** — strong demand
* Top category: **Classic (14,888 units)**
* Avg price: **$16.44** (mid-premium)
* Size pricing: S→M→L typically +$3–$4 and +$4–$4.5 (S→L ≈ +$8)
* High-value orders (> $250) indicate frequent group purchases
* **The Greek** is the main premium upsell (largest S→XXL jump)

## ✅ Recommendations
* Promote **Classic** and **Supreme**; bundle Medium & Large
* Run targeted promos for **Chicken** to lift demand
* Upsell **The Greek XXL** and other premium items
* Use staffing and prep buffers for **20:00–22:00 peak hours**
