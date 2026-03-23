-- Use the schema (database)
USE retail_dw;

-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT,
    month INT,
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table: Sales
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(15,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert sample cleaned data (at least 10 rows)
INSERT INTO dim_date VALUES (1, '2023-01-15', 15, 1, 2023);
INSERT INTO dim_date VALUES (2, '2023-02-05', 5, 2, 2023);
INSERT INTO dim_date VALUES (3, '2023-03-31', 31, 3, 2023);
INSERT INTO dim_date VALUES (4, '2023-06-04', 4, 6, 2023);
INSERT INTO dim_date VALUES (5, '2023-08-09', 9, 8, 2023);
INSERT INTO dim_date VALUES (6, '2023-10-26', 26, 10, 2023);
INSERT INTO dim_date VALUES (7, '2023-11-18', 18, 11, 2023);
INSERT INTO dim_date VALUES (8, '2023-12-08', 8, 12, 2023);
INSERT INTO dim_date VALUES (9, '2023-12-26', 26, 12, 2023);
INSERT INTO dim_date VALUES (10, '2023-12-29', 29, 12, 2023);

INSERT INTO dim_store VALUES (1, 'Chennai Anna', 'Chennai');
INSERT INTO dim_store VALUES (2, 'Delhi South', 'Delhi');
INSERT INTO dim_store VALUES (3, 'Bangalore MG', 'Bangalore');
INSERT INTO dim_store VALUES (4, 'Pune FC Road', 'Pune');
INSERT INTO dim_store VALUES (5, 'Mumbai Central', 'Mumbai');

INSERT INTO dim_product VALUES (1, 'Smartwatch', 'Electronics');
INSERT INTO dim_product VALUES (2, 'Phone', 'Electronics');
INSERT INTO dim_product VALUES (3, 'Jeans', 'Clothing');
INSERT INTO dim_product VALUES (4, 'Jacket', 'Clothing');
INSERT INTO dim_product VALUES (5, 'Atta 10kg', 'Grocery');
INSERT INTO dim_product VALUES (6, 'Milk 1L', 'Grocery');
INSERT INTO dim_product VALUES (7, 'Speaker', 'Electronics');
INSERT INTO dim_product VALUES (8, 'Tablet', 'Electronics');
INSERT INTO dim_product VALUES (9, 'Biscuits', 'Grocery');
INSERT INTO dim_product VALUES (10, 'Saree', 'Clothing');

INSERT INTO fact_sales VALUES (1, 1, 1, 1, 10, 58851.01, 588510.10);
INSERT INTO fact_sales VALUES (2, 2, 1, 2, 20, 48703.39, 974067.80);
INSERT INTO fact_sales VALUES (3, 3, 4, 1, 6, 58851.01, 353106.06);
INSERT INTO fact_sales VALUES (4, 4, 1, 4, 15, 30187.24, 452808.60);
INSERT INTO fact_sales VALUES (5, 5, 3, 5, 12, 52464.00, 629568.00);
INSERT INTO fact_sales VALUES (6, 6, 4, 3, 16, 2317.47, 37079.52);
INSERT INTO fact_sales VALUES (7, 7, 2, 4, 5, 30187.24, 150936.20);
INSERT INTO fact_sales VALUES (8, 8, 3, 9, 9, 27469.99, 247229.91);
INSERT INTO fact_sales VALUES (9, 9, 4, 6, 4, 43374.39, 173497.56);
INSERT INTO fact_sales VALUES (10, 10, 5, 10, 15, 35451.81, 531777.15);
