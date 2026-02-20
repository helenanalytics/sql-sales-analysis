-- =========================================
-- Project: Sales Trend Analysis
-- Author: Helen
-- Description:
-- Analyze monthly sales data to identify
-- peak months, slow months, and average sales.
-- =========================================


-- 1️⃣ Create Table
CREATE TABLE MonthlySales (
    MonthDate DATE,
    SalesAmount INT
);


-- 2️⃣ Insert Data
INSERT INTO MonthlySales VALUES
('2021-03-01', 52350),
('2021-04-01', 49750),
('2021-05-01', 42535),
('2021-06-01', 37800),
('2021-07-01', 36950),
('2021-08-01', 35125),
('2021-09-01', 38750),
('2021-10-01', 42035),
('2021-11-01', 48950),
('2021-12-01', 59850);


-- 3️⃣ View Data Ordered by Date
SELECT *
FROM MonthlySales
ORDER BY MonthDate;


-- 4️⃣ Find Busiest Month
SELECT TOP 1 MonthDate, SalesAmount
FROM MonthlySales
ORDER BY SalesAmount DESC;


-- 5️⃣ Find Slowest Month
SELECT TOP 1 MonthDate, SalesAmount
FROM MonthlySales
ORDER BY SalesAmount ASC;


-- 6️⃣ Calculate Average Monthly Sales
SELECT CAST(AVG(CAST(SalesAmount AS float)) AS decimal(12,2)) AS AvgMonthlySales
FROM MonthlySales;
