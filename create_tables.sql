-- Databricks notebook source
--STORE DIMENSION
CREATE OR REPLACE TABLE uc_demos_hanna_moazam.default.dim_store(
  store_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  store_name STRING,
  address STRING,
  test STRING
);



-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creating initial tables

-- COMMAND ----------

--PRODUCT DIMENSION
CREATE OR REPLACE TABLE uc_demos_hanna_moazam.default.dim_product(
  product_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  sku STRING,
  description STRING,
  category STRING,
  name STRING
);

-- COMMAND ----------

--CUSTOMER DIMENSION
CREATE OR REPLACE TABLE uc_demos_hanna_moazam.default.dim_customer(
  customer_id BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 0 INCREMENT BY 10) PRIMARY KEY,
  customer_name STRING,
  customer_profile STRING,
  address STRING
);

-- COMMAND ----------

CREATE OR REPLACE TABLE uc_demos_hanna_moazam.default.fact_sales(  
  sales_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,  
  product_id BIGINT NOT NULL CONSTRAINT dim_product_fk FOREIGN KEY REFERENCES uc_demos_hanna_moazam.default.dim_product,  
  store_id BIGINT NOT NULL CONSTRAINT dim_store_fk FOREIGN KEY REFERENCES uc_demos_hanna_moazam.default.dim_store,  
  customer_id BIGINT NOT NULL CONSTRAINT dim_customer_fk FOREIGN KEY REFERENCES uc_demos_hanna_moazam.default.dim_customer,  
  price_sold DOUBLE,  
  units_sold INT,  
  dollar_cost DOUBLE  
);  

