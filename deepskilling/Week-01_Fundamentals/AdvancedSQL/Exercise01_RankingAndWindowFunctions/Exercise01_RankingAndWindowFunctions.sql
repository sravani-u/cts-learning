-- ============================================
-- Exercise 1: Ranking and Window Functions
-- Goal:
-- Use ROW_NUMBER(), RANK(), DENSE_RANK(),
-- OVER(), and PARTITION BY
-- ============================================

-- Create Product Table

CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert Sample Data

INSERT INTO Products VALUES
(1,'iPhone','Mobile',1000),
(2,'Samsung S24','Mobile',1000),
(3,'Redmi','Mobile',500),
(4,'Dell XPS','Laptop',1500),
(5,'HP Pavilion','Laptop',1500),
(6,'Asus VivoBook','Laptop',1200);

-------------------------------------------------
-- ROW_NUMBER()
-------------------------------------------------

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS RowNumber
FROM Products;

-------------------------------------------------
-- RANK()
-------------------------------------------------

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    RANK() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS ProductRank
FROM Products;

-------------------------------------------------
-- DENSE_RANK()
-------------------------------------------------

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    DENSE_RANK() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS DenseProductRank
FROM Products;

-------------------------------------------------
-- TOP 3 PRODUCTS IN EACH CATEGORY
-------------------------------------------------

SELECT *
FROM
(
    SELECT
        ProductID,
        ProductName,
        Category,
        Price,
        ROW_NUMBER() OVER
        (
            PARTITION BY Category
            ORDER BY Price DESC
        ) AS RN
    FROM Products
) P
WHERE RN <= 3;