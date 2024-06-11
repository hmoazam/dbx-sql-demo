-- Databricks notebook source
-- MAGIC %python
-- MAGIC # Databricks notebook source

-- COMMAND ----------

INSERT INTO
  uc_demos_hanna_moazam.default.dim_store (store_name, address)
VALUES
  ('City Store', '1 Main Rd, Whoville');

-- COMMAND ----------

INSERT INTO
  uc_demos_hanna_moazam.default.dim_product (sku, description, category)
VALUES
  ('1000001', 'High Tops', 'Ladies Shoes'),
  ('7000003', 'Printed T', 'Ladies Fashion Tops');

-- COMMAND ----------

INSERT INTO
  uc_demos_hanna_moazam.default.dim_customer (customer_name, customer_profile, address)
VALUES
  ('Al', 'Al profile', 'Databricks - Queensland Australia'),
  ('Quentin', 'REDACTED_PROFILE', 'Databricks - Paris France');

-- COMMAND ----------

INSERT INTO
  uc_demos_hanna_moazam.default.fact_sales (product_id, store_id, customer_id, price_sold, units_sold, dollar_cost)
VALUES
  (1, 1, 0, 100.99, 2, 2.99),
  (2, 1, 0, 10.99, 2, 2.99),
  (1, 1, 0, 100.99, 2, 2.99),
  (1, 1, 10, 100.99, 2, 2.99),
  (2, 1, 10, 10.99, 2, 2.99);
