-- Step 1: Drop and recreate the database
DROP DATABASE IF EXISTS fresh_db;
CREATE DATABASE fresh_db;
USE fresh_db;

-- Step 2: Create tables
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(100) NOT NULL UNIQUE,
    customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(50) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL UNIQUE,
    office_address VARCHAR(200) NOT NULL
);

CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);

-- Step 3: Insert sample data
INSERT INTO Customers VALUES ('C001','Rohan Mehta','rohan@gmail.com','Mumbai');
INSERT INTO Customers VALUES ('C002','Priya Sharma','priya@gmail.com','Delhi');
INSERT INTO Customers VALUES ('C003','Amit Verma','amit@gmail.com','Bangalore');
INSERT INTO Customers VALUES ('C004','Sneha Iyer','sneha@gmail.com','Chennai');
INSERT INTO Customers VALUES ('C005','Vikram Singh','vikram@gmail.com','Mumbai');

INSERT INTO Products VALUES ('P001','Laptop','Electronics',55000);
INSERT INTO Products VALUES ('P002','Mouse','Electronics',800);
INSERT INTO Products VALUES ('P003','Desk Chair','Furniture',8500);
INSERT INTO Products VALUES ('P004','Notebook','Stationery',120);
INSERT INTO Products VALUES ('P005','Headphones','Electronics',3200);

INSERT INTO SalesReps VALUES ('SR01','Deepak Joshi','deepak@corp.com','Mumbai HQ');
INSERT INTO SalesReps VALUES ('SR02','Anita Desai','anita@corp.com','Delhi Office');
INSERT INTO SalesReps VALUES ('SR03','Ravi Kumar','ravi@corp.com','Bangalore Office');

INSERT INTO Orders VALUES ('ORD1114','C001','P001','SR01',2,'2023-08-06');
INSERT INTO Orders VALUES ('ORD1027','C002','P004','SR02',4,'2023-11-02');
INSERT INTO Orders VALUES ('ORD1153','C003','P002','SR01',3,'2023-02-14');
INSERT INTO Orders VALUES ('ORD1037','C002','P005','SR03',2,'2023-03-06');
INSERT INTO Orders VALUES ('ORD1075','C005','P003','SR03',3,'2023-04-18');

-- Step 4: Test queries
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM SalesReps;
SELECT * FROM Orders;
