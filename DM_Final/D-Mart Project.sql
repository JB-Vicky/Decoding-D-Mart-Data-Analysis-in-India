use projectdmart;

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    PhoneNumber VARCHAR(15),
    City VARCHAR(50),
    State VARCHAR(50)
);

INSERT INTO Customers (Customer_id, FirstName, LastName, Gender, Age, PhoneNumber, City, State) VALUES
    (1, 'Lakshmi', 'Ravi', 'Female', 22, '9876543210', 'Chennai', 'Tamil Nadu'),
    (2, 'Vivek', 'Sharma', 'Male', 24, '9876543211', 'Bengaluru', 'Karnataka'),
    (3, 'Sita', 'Mehta', 'Female', 23, '9876543213', 'Kolkata', 'West Bengal'),
    (4, 'Neha', 'Gupta', 'Female', 20, '9876543215', 'Pune', 'Maharashtra'),
    (5, 'Raj', 'Kapoor', 'Male', 25, '9876543220', 'Delhi', 'Delhi'),
    (6, 'Rajesh', 'Kumar', 'Male', 35, '9876543212', 'Mumbai', 'Maharashtra'),
    (7, 'Arun', 'Patel', 'Male', 42, '9876543214', 'Hyderabad', 'Telangana'),
    (8, 'Manoj', 'Iyer', 'Male', 33, '9876543216', 'Coimbatore', 'Tamil Nadu'),
    (9, 'Anjali', 'Deshmukh', 'Female', 29, '9876543217', 'Ahmedabad', 'Gujarat'),
    (10, 'Ravi', 'Varma', 'Male', 39, '9876543218', 'Lucknow', 'Uttar Pradesh'),
    (11, 'Neeraj', 'Singh', 'Male', 30, '9876543221', 'Indore', 'Madhya Pradesh'),
    (12, 'Pooja', 'Sharma', 'Female', 27, '9876543222', 'Jaipur', 'Rajasthan'),
    (13, 'Suresh', 'Reddy', 'Male', 28, '9876543223', 'Visakhapatnam', 'Andhra Pradesh'),
    (14, 'Kiran', 'Nair', 'Female', 31, '9876543224', 'Thiruvananthapuram', 'Kerala'),
    (15, 'Vinay', 'Rao', 'Male', 29, '9876543225', 'Mysuru', 'Karnataka');

select * from Customers;


CREATE TABLE Products (
    Product_id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    ExpiryDate DATE
);

INSERT INTO Products (Product_id, ProductName, Category, Brand, Price, StockQuantity, ExpiryDate) VALUES
    (1, 'Basmati Rice', 'Groceries', 'India Gate', 1500, 500, '2025-12-31'),
    (2, 'Cotton Shirt', 'Clothing', 'Raymond', 1200, 250, '2025-06-30'),
    (3, 'Organic Apples', 'Fruits', 'Nature Fresh', 200, 400, '2024-12-15'),
    (4, 'Whole Wheat Flour', 'Groceries', 'Aashirvaad', 600, 1000, '2025-11-20'),
    (5, 'Casual Shoes', 'Footwear', 'Bata', 3000, 300, '2025-10-25'),
    (6, 'Packaged Juice', 'Beverages', 'Real', 120, 600, '2025-02-05'),
    (7, 'Formal Pants', 'Clothing', 'Arrow', 1800, 200, '2025-06-15'),
    (8, 'Organic Spinach', 'Vegetables', 'Fresh Farms', 60, 800, '2024-10-01'),
    (9, 'Milk', 'Dairy', 'Amul', 70, 1000, '2024-09-28'),
    (10, 'Luxury Sofa', 'Furniture', 'Godrej', 45000, 50, NULL),
    (11, 'Packaged Almonds', 'Dry Fruits', 'Nutty', 1200, 400, '2025-12-10'),
    (12, 'Cotton Bedsheet', 'Home Decor', 'Bombay Dyeing', 1500, 600, '2025-04-25'),
    (13, 'Green Tea', 'Beverages', 'Tata Tea', 500, 700, '2025-12-31'),
    (14, 'Leather Jacket', 'Clothing', 'Woodland', 7000, 150, '2025-06-20'),
    (15, 'Instant Coffee', 'Beverages', 'Nescafe', 450, 800, '2025-03-12');
    
    Select * from Products;
    
 
	 CREATE TABLE Stores (
		Store_id INT PRIMARY KEY AUTO_INCREMENT,
		StoreName VARCHAR(100),
		City VARCHAR(50),
		State VARCHAR(50)
	);

INSERT INTO Stores (Store_id, StoreName, City, State)
VALUES
(1, 'SuperMart', 'Mumbai', 'Maharashtra'),
(2, 'MegaStore', 'Bengaluru', 'Karnataka'),
(3, 'Grocery Hub', 'Delhi', 'Delhi'),
(4, 'Fashion Point', 'Chennai', 'Tamil Nadu'),
(5, 'Electro World', 'Hyderabad', 'Telangana'),
(6, 'Home Essentials', 'Pune', 'Maharashtra'),
(7, 'Book Nook', 'Ahmedabad', 'Gujarat'),
(8, 'Sporting Goods', 'Jaipur', 'Rajasthan'),
(9, 'Pet Paradise', 'Kolkata', 'West Bengal'),
(10, 'Kids World', 'Lucknow', 'Uttar Pradesh'),
(11, 'Fruits & Veggies', 'Coimbatore', 'Tamil Nadu'),
(12, 'Beverage Barn', 'Visakhapatnam', 'Andhra Pradesh'),
(13, 'Beauty Shoppe', 'Surat', 'Gujarat'),
(14, 'Hardware Hub', 'Nagpur', 'Maharashtra'),
(15, 'Kitchen King', 'Indore', 'Madhya Pradesh');


select * from Stores;


	CREATE TABLE Sales (
		Sale_id INT PRIMARY KEY AUTO_INCREMENT,
		SaleDate DATE,
		Customer_id INT,
		Store_id INT,
		TotalAmount DECIMAL(10, 2),
		Tax DECIMAL(10, 2),
		CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
		CONSTRAINT fk_Store FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
		INDEX idx_customer (Customer_id),
		INDEX idx_store (Store_id)
);

INSERT INTO Sales (Sale_id, SaleDate, Customer_id, Store_id, TotalAmount) VALUES  
    (1, '2024-09-20', 1, 1, 1500.00),     
    (2, '2024-09-21', 2, 2, 1200.00),     
    (3, '2024-09-22', 3, 3, 600.00),      
    (4, '2024-09-23', 4, 4, 3000.00),     
    (5, '2024-09-24', 5, 5, 3000.00),     
    (6, '2024-09-25', 6, 6, 480.00),     
    (7, '2024-09-26', 7, 7, 3600.00),     
    (8, '2024-09-27', 8, 8, 600.00),      
    (9, '2024-09-28', 9, 9, 70.00),       
    (10, '2024-09-29', 10, 10, 45000.00),  
    (11, '2024-09-30', 11, 11, 3600.00),  
    (12, '2024-10-01', 12, 12, 3000.00),  
    (13, '2024-10-02', 13, 13, 2500.00),  
    (14, '2024-10-03', 14, 14, 7000.00),  
    (15, '2024-10-04', 15, 15, 1800.00);

select * from Sales;

CREATE TABLE SalesDetails (
    SaleDetail_id INT PRIMARY KEY AUTO_INCREMENT,
    Sale_id INT,
    Product_id INT,
    Quantity INT,
    TaxPercentage DECIMAL(10, 2),
    TaxAmount DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (Sale_id) REFERENCES Sales(Sale_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
    INDEX idx_sale (Sale_id),
    INDEX idx_product (Product_id)
);

INSERT INTO SalesDetails (Sale_id, Product_id, Quantity, TaxPercentage, TaxAmount, TotalPrice) VALUES
(1, 1, 1, 5, 75, 1500.00),        -- Sale 1, Product 1
(2, 2, 1, 12, 144, 1200.00),      -- Sale 2, Product 2
(3, 3, 3, 5, 10, 600.00),          -- Sale 3, Product 3
(4, 4, 5, 5, 30, 3000.00),         -- Sale 4, Product 4
(5, 5, 1, 18, 540, 3000.00),      -- Sale 5, Product 5
(6, 6, 4, 18, 22, 480.00),         -- Sale 6, Product 6
(7, 7, 2, 12, 216, 3600.00),      -- Sale 7, Product 7
(8, 8, 10, 5, 3, 600.00),           -- Sale 8, Product 8
(9, 9, 1, 5, 4, 70.00),             -- Sale 9, Product 9
(10, 10, 1, 12, 5400, 45000.00), -- Sale 10, Product 10
(11, 11, 3, 5, 60, 3600.00),      -- Sale 11, Product 11
(12, 12, 2, 12, 180, 3000.00),    -- Sale 12, Product 12
(13, 13, 5, 18, 90, 2500.00),      -- Sale 13, Product 13
(14, 14, 1, 12, 840, 7000.00),    -- Sale 14, Product 14
(15, 15, 4, 18, 81, 1800.00);      -- Sale 15, Product 15

select * from SalesDetails;


CREATE TABLE Inventory (
    Inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    Product_id INT,
    Store_id INT,
    StockQuantity INT,
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
    FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
    INDEX idx_product_inventory (Product_id),
    INDEX idx_store_inventory (Store_id)
);

INSERT INTO Inventory (Inventory_id, Product_id, Store_id, StockQuantity) VALUES
(1, 1, 1, 100),  -- ProductID 1 in StoreID 1
(2, 2, 2, 150),  -- ProductID 2 in StoreID 2
(3, 3, 3, 200),  -- ProductID 3 in StoreID 3
(4, 4, 4, 250),  -- ProductID 4 in StoreID 4
(5, 5, 5, 300),  -- ProductID 5 in StoreID 5
(6, 6, 6, 350),  -- ProductID 6 in StoreID 6
(7, 7, 7, 400),  -- ProductID 7 in StoreID 7
(8, 8, 8, 450),  -- ProductID 8 in StoreID 8
(9, 9, 9, 500),  -- ProductID 9 in StoreID 9
(10, 10, 10, 550), -- ProductID 10 in StoreID 10
(11, 11, 11, 600), -- ProductID 11 in StoreID 11
(12, 12, 12, 650), -- ProductID 12 in StoreID 12
(13, 13, 13, 700), -- ProductID 13 in StoreID 13
(14, 14, 14, 750), -- ProductID 14 in StoreID 14
(15, 15, 15, 800); -- ProductID 15 in StoreID 15

select * from Inventory;

CREATE TABLE Revenue (
    Revenue_id INT PRIMARY KEY AUTO_INCREMENT,
    Sale_id INT,
    Store_id INT,
    TaxPercentage DECIMAL(10, 2),
    TaxAmount DECIMAL(10,2),
    TotalRevenue DECIMAL(10, 2),
    RevenueDate DATE,
    FOREIGN KEY (Sale_id) REFERENCES Sales(Sale_id),
    FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
    INDEX idx_revenue_sale (Sale_id),
    INDEX idx_revenue_store (Store_id)
);

INSERT INTO Revenue (Revenue_id, Sale_id, Store_id, TaxPercentage, TaxAmount, TotalRevenue, RevenueDate) VALUES
(1, 1, 1, 5, 75.00, 1500.00, '2024-09-20'),   
(2, 2, 2, 12, 144.00, 1200.00, '2024-09-21'),   
(3, 3, 3, 5, 10.00, 600.00, '2024-09-22'),   
(4, 4, 4, 5, 30.00, 3000.00, '2024-09-23'),   
(5, 5, 5, 18, 540.00, 3000.00, '2024-09-24'),   
(6, 6, 6, 18, 22.00, 480.00, '2024-09-25'),   
(7, 7, 7, 12, 216.00, 3600.00, '2024-09-26'),    
(8, 8, 8, 5, 3.00, 600.00, '2024-09-27'),     
(9, 9, 9, 5, 4.00, 70.00, '2024-09-28'),      
(10, 10, 10, 12, 5400.00, 45000.00, '2024-09-29'), 
(11, 11, 11, 5, 60.00, 3600.00, '2024-09-30'),   
(12, 12, 12, 12, 180.00, 3000.00, '2024-10-01'),  
(13, 13, 13, 18, 90.00, 2500.00, '2024-10-02'),  
(14, 14, 14, 12, 840.00, 7000.00, '2024-10-03'),  
(15, 15, 15, 18, 81.00, 1800.00, '2024-10-04');

select * from Revenue;

---- EmployeeSalary ---------
-----------------------------------------

CREATE TABLE EmployeeSalary (
    Employee_id INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeName VARCHAR(100),
    Designation VARCHAR(50),
    Department VARCHAR(50),
    BasicSalary DECIMAL(10, 2),
    SalaryMonth VARCHAR(20)
);

INSERT INTO EmployeeSalary (Employee_id, EmployeeName, Designation, Department, BasicSalary, SalaryMonth)
VALUES
(1,'Lakshmi Iyer', 'Store Manager', 'Management', 70000.00, 'September 2024'),
(2, 'Vivek Kumar', 'Cashier', 'Sales', 25000.00, 'September 2024'),
(3, 'Priya Rao', 'Sales Associate', 'Sales', 20000.00, 'September 2024'),
(4, 'Arjun Desai', 'Inventory Supervisor', 'Inventory', 40000.00, 'September 2024'),
(5, 'Neha Sharma', 'Customer Service Executive', 'Support', 22000.00, 'September 2024'),
(6, 'Rahul Mehta', 'Accountant', 'Finance', 35000.00, 'September 2024'),
(7, 'Aditi Joshi', 'Marketing Executive', 'Marketing', 30000.00, 'September 2024'),
(8, 'Siddharth Verma', 'IT Support', 'IT', 28000.00, 'September 2024'),
(9, 'Komal Singh', 'HR Executive', 'Human Resources', 32000.00, 'September 2024'),
(10,'Karan Gupta', 'Sales Manager', 'Sales', 70000.00, 'September 2024');

Select * from EmployeeSalary;
---------------------------------------------------------

SELECT * FROM Customers WHERE Age = 35;

SELECT * FROM Customers WHERE City != 'Chennai';

SELECT * FROM Customers WHERE City <> 'Chennai';

SELECT * FROM Customers WHERE Age > 30;

SELECT * FROM Customers WHERE Age < 25;

SELECT * FROM Customers WHERE Age <= 22;

SELECT * FROM Customers WHERE Age BETWEEN 25 AND 35;

----------------------------------------------------------------------------


SELECT * FROM Customers WHERE FirstName LIKE 'Ra%';

SELECT * FROM Customers WHERE LastName LIKE '%a';

SELECT * FROM Customers WHERE City IN ('Chennai', 'Delhi', 'Mumbai');
------------------------------------------------------------------------

--------- Aggregate Functions ----------


SELECT COUNT(*) AS TotalCustomers FROM Customers;

SELECT SUM(Age) AS TotalAge FROM Customers;

SELECT AVG(Age) AS AverageAge FROM Customers;

SELECT MIN(Age) AS YoungestCustomerAge FROM Customers;

SELECT MAX(Age) AS OldestCustomerAge FROM Customers;

SELECT DISTINCT City FROM Customers;

SELECT DISTINCT State FROM Customers;

SELECT DISTINCT State FROM Customers order by State asc;

SELECT * FROM Customers ORDER BY Age DESC;

SELECT Gender, COUNT(*) AS CustomerCount FROM Customers GROUP BY Gender;


------- Update, Alter, Drop ------------
-------------------------------------------------------------------------------------

UPDATE Customers
SET PhoneNumber = '9876543299'
WHERE Customer_id = 5;

ALTER TABLE Customers
ADD Email VARCHAR(100);

Alter table Customers
Drop column Email;

UPDATE Customers
SET Email = CASE
    WHEN Customer_id = 1 THEN 'lakshmi.ravi@example.com'
    WHEN Customer_id = 2 THEN 'vivek.sharma@example.com'
    WHEN Customer_id = 3 THEN 'sita.mehta@example.com'
    WHEN Customer_id = 4 THEN 'neha.gupta@example.com'
    WHEN Customer_id = 5 THEN 'raj.kapoor@example.com'
    WHEN Customer_id = 6 THEN 'rajesh.kumar@example.com'
    WHEN Customer_id = 7 THEN 'arun.patel@example.com'
    WHEN Customer_id = 8 THEN 'manoj.iyer@example.com'
    WHEN Customer_id = 9 THEN 'anjali.deshmukh@example.com'
    WHEN Customer_id = 10 THEN 'ravi.varma@example.com'
    WHEN Customer_id = 11 THEN 'neeraj.singh@example.com'
    WHEN Customer_id = 12 THEN 'pooja.sharma@example.com'
    WHEN Customer_id = 13 THEN 'suresh.reddy@example.com'
    WHEN Customer_id = 14 THEN 'kiran.nair@example.com'
    WHEN Customer_id = 15 THEN 'vinay.rao@example.com'
END
WHERE Customer_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15); ---- If we use Where Dont need Disable safe update mode:



SET SQL_Safe_updates=1; ---- Re-enable safe update mode safe update mode:

SET SQL_SAFE_UPDATES = 0; ------ Disable safe update mode:

--------------------------------------------------------------------------------------------------


use projectdmart;

--------------------------------------------

select*from customers;
select * from stores;
select * from sales;

--- joins -------
---------------------------

select *
from Customers as c
join Sales as s ON c.customer_id = s.sale_id;

select *
from Customers as c
left join Sales as s
ON c.customer_id = s.sale_id;

select *
from Customers as c
right join Sales as s
ON c.customer_id = s.sale_id;

select * 
from customers as c
cross join sales as s
order by c.customer_id asc;

select * 
from customers as c
cross join sales as s
order by c.customer_id desc;


select 
c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
from Customers as c
join Sales as s
on c.Customer_id = s.Customer_id;

select 
c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
from Customers as c
left join Sales as s
on c.Customer_id = s.Customer_id;

select 
c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
from Customers as c
right join Sales as s
on c.Customer_id = s.Customer_id;

select 
c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
from Customers as c
cross join Sales as s;

select *
from
Stores as st
join sales as s
On st.store_id = s.sale_id;

select *
from
Stores as st
right join sales as s
On st.store_id = s.sale_id;

select *
from
Stores as st
left join sales as s
On st.store_id = s.store_id;


select*
from Stores as st
cross join sales as s
order by Store_id asc;

SELECT *
FROM 
    Stores AS st
CROSS JOIN 
    Sales AS s
ORDER BY 
    st.Store_id ASC;

---- Single completed -----

------ Double joins three tables ---------
----------------------------------------------

select * From Customers;
select* from Stores;
select * from Sales;

select *
from Customers as C
inner join Sales as s
on c.customer_id = s.customer_id
inner join Stores as st
on st.store_id = s.store_id;

SELECT *
FROM Customers as c
join Sales as s
on c.customer_id  = s.customer_id
join Stores as st
on st.store_id = s.store_id;

SELECT *
FROM Customers as c
left join Sales as s
on c.customer_id  = s.customer_id
left join Stores as st
on st.store_id = s.store_id;

SELECT *
FROM Customers as c
right join Sales as s
on c.customer_id  = s.customer_id
right join Stores as st
on st.store_id = s.store_id;


SELECT *
FROM Customers AS c
CROSS JOIN Sales AS s
CROSS JOIN Stores AS st
ORDER BY s.Sale_id, c.Customer_id, st.Store_id ASC;


----- Create view -------
-----------------------------------------

DROP VIEW IF EXISTS CustomerSalesView;

create  VIEW CustomerSalesView AS
SELECT 
    c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
FROM Customers AS c
JOIN Sales AS s
ON c.Customer_id = s.Customer_id;

SELECT * FROM CustomerSalesView;

SELECT * 
FROM CustomerSalesView
WHERE Customer_id = 1;

SELECT * 
FROM CustomerSalesView
WHERE Customer_id BETWEEN 1 AND 15;

------ Aggerate Fucnctions---------
------------------------------------------------------

CREATE OR REPLACE VIEW CustomerSalesview AS
SELECT 
    c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, 
    COUNT(s.Sale_id) AS TotalSales, 
    SUM(s.totalamount) AS TotalAmountSpent
FROM Customers AS c
JOIN Sales AS s
ON c.Customer_id = s.Customer_id
GROUP BY c.Customer_id, c.FirstName, c.LastName, c.Age, c.City;

select * from CustomerSalesview;
-----------------------------------------------------------------


CREATE OR REPLACE VIEW CustomerSalesview AS
SELECT 
    c.Customer_id, 
    c.FirstName, 
    c.LastName, 
    c.Age, 
    c.City, 
    COUNT(s.Sale_id) AS TotalSales,
    SUM(s.TotalAmount) AS TotalAmountSpent,       
    AVG(s.TotalAmount) AS AverageAmountSpent,     
    MIN(s.TotalAmount) AS MinimumAmountSpent,     
    MAX(s.TotalAmount) AS MaximumAmountSpent     
FROM Customers AS c
JOIN Sales AS s
ON c.Customer_id = s.Customer_id
GROUP BY c.Customer_id, c.FirstName, c.LastName, c.Age, c.City;

select * from CustomerSalesview;
------------------------------------------------------------------------------------------------------------

---- joins for Products, Sales, SalesDetalis --------
-----------------------------------------------------------

select * from Products;
Select * from Sales;
Select * from SalesDetails;

select *
from Products as p
join salesDetails as sd
ON p.Product_id = sd.Product_id;


create view Psd as
select 
p.Product_id, p.ProductName, p.Brand, p.Price, sd.SaleDetail_id
from Products as p
join SalesDetails as sd
ON p.Product_id = sd.Product_id;

select * from psd;

select *
from Sales as s
join SalesDetails as sd
on s.sale_id = sd.sale_id;

drop view Psd;

create View psd as
select 
s.sale_id , s.saleDate, s.TotalAmount, sd.TaxPercentage, sd.TaxAmount, sd.TotalPrice
from Sales as s
join SalesDetails as sd
on s.sale_id = sd.sale_id;

select * from psd;


select * from Products;
Select * from Sales;
Select * from SalesDetails;



SELECT *
FROM Products AS p
JOIN Sales AS s 
ON p.Product_id = s.Product_id
JOIN SalesDetails AS sd 
ON s.Sale_id = sd.Sale_id;

SELECT *
FROM Sales AS s
JOIN SalesDetails AS sd ON s.Sale_id = sd.Sale_id
JOIN Products AS p ON sd.Product_id = p.Product_id;


Create View pssd as
SELECT 
p.Product_id, p.ProductName, p.Price, s.Sale_id, sd.SaleDetail_id
FROM Products AS p
JOIN SalesDetails AS sd ON p.Product_id = sd.Product_id
JOIN Sales AS s ON sd.Sale_id = s.Sale_id;

select * from pssd;

select * from Products;
Select * from Sales;
Select * from SalesDetails;

------------------------------------------------------------------------------------------------------------------------

------ Joins Products, Stores, Inventory --------

select * from Products;
select * from Stores;
select * from Inventory;

select *
from Products as p
join Inventory as inv
On p.Product_id = inv.Product_id;

select 
p.product_id, p.ProductName, p.Brand, p.Price, inv.StockQuantity
from Products as p
join Inventory as inv
on p.Product_id = inv.Product_id;

select *
from Stores as st
join Inventory as inv
on st.Store_id = inv.Store_id;

select 
st.Store_id, st.StoreName, st.City, inv.StockQuantity
from Stores as st
join Inventory as inv
 on st.Store_id = inv.Store_id;

select * from Products;
select * from Stores;
select * from Inventory;

select *
from  Products as p
join Inventory as inv
on p.Product_id = inv.Product_id
join Stores as st
on inv.Store_id = st.Store_id;


SELECT *
FROM Products AS p
JOIN Inventory AS inv 
ON p.Product_id = inv.Product_id
JOIN Stores AS st 
ON inv.Store_id = st.Store_id;


select *
from Stores as st
join Inventory as inv
on st.Store_id = inv.Store_id
join Products as p
on p.Product_id = inv.Product_id;

-----------------------------------------------------------------------------------------------------------

----- Joins Store, Sales, Revenue ----------------
---------------------------------------------------------------

select * From Stores;
Select * From Sales;
Select * From Revenue;

select *
from Stores as st
join Revenue as r
on st.Store_id = r.Store_id;

select *
From Sales as s
join Revenue as r
on s.Sale_id = r.Sale_id;

select * From Stores;
Select * From Sales;
Select * From Revenue;


select *
From Stores as st
join Revenue as r on st.Store_id = r.Store_id
join Sales as s on s.Sale_id = r.Sale_id; 

SELECT *
FROM Stores AS st
JOIN Revenue AS r ON st.Store_id = r.Store_id
JOIN Sales AS s ON s.Sale_id = r.Sale_id;

------ Window Function EmployeeSalary ----------
----------------------------------------------------------------------------

SELECT 
    SUM(BasicSalary) sum_BasicSalary
FROM 
    EmployeeSalary;

Select 
Employee_id, EmployeeName, Designation, Department, BasicSalary,
SUM(BasicSalary) OVER () Sum_BasicSalary
From EmployeeSalary;

SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    Department, 
    BasicSalary,
    SUM(BasicSalary) OVER () AS Sum_BasicSalary
FROM 
    EmployeeSalary;
    
    SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    Department, 
    BasicSalary,
    AVG(BasicSalary) OVER () as AVG_BasicSalary
    from EmployeeSalary;
    
    
    SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    Department, 
    BasicSalary,
    SUM(BasicSalary) OVER () AS Total_BasicSalary,
    AVG(BasicSalary) OVER () AS AVG_BasicSalary,
    COUNT(*) OVER () AS Total_Employees,
    MIN(BasicSalary) OVER () AS Min_BasicSalary,
    MAX(BasicSalary) OVER () AS Max_BasicSalary
FROM 
    EmployeeSalary;
    
    
    SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    Department, 
    BasicSalary,
    SUM(BasicSalary)  AS Total_BasicSalary,
    AVG(BasicSalary) AS AVG_BasicSalary,
    COUNT(*) AS Total_Employees,
    MIN(BasicSalary)  AS Min_BasicSalary,
    MAX(BasicSalary) AS Max_BasicSalary
FROM 
    EmployeeSalary;
    
---- Rank ------

 SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (ORDER BY BasicSalary desc) AS SalaryRank
FROM 
    EmployeeSalary;
   
Drop table EmployeeSalary;


 SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
     RANK() OVER (ORDER BY BasicSalary desc) AS SalaryRank
FROM 
    EmployeeSalary;
    
------ DENSE_RANK -------
    
    SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    DENSE_RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank
FROM 
    EmployeeSalary;
    
  ------ ROW_NUMBER --------
  
  
SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    ROW_NUMBER () OVER (ORDER BY BasicSalary DESC) AS SalaryRank
FROM 
    EmployeeSalary;
    
    
    
 WITH RankedEmployees AS (
    SELECT 
        Employee_id,
        EmployeeName,
        Designation,
        BasicSalary,
        RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank
    FROM 
        EmployeeSalary
)

SELECT *
FROM RankedEmployees
WHERE SalaryRank <= 1;  -- Get top 5 employees based on salary

WITH RANKEDEMPLOYEE AS (

SELECT 

Employee_id, EmployeeName, Designation, BasicSalary, 
RANK () OVER (ORDER BY BasicSalary DESC) as SalaryRank
from EmployeeSalary 
)

select *
From RANKEDEMPLOYEE
where SalaryRank <=1;

WITH RANKEDEMPLOYEE AS (
select 
Employee_id, EmployeeName, Designation ,BasicSalary,
RANK () Over (order by BasicSalary asc) as SalaryRange
From 
EmployeeSalary
)
select *
From RANKEDEMPLOYEE
WHERE SalaryRange >=2;

WITH RANKEDEMPLOYEE AS (
    SELECT 
        Employee_id, 
        EmployeeName, 
        Designation, 
        BasicSalary,
        RANK() OVER (ORDER BY BasicSalary desc) AS SalaryRange
    FROM 
        EmployeeSalary
)
SELECT *
FROM RANKEDEMPLOYEE
WHERE SalaryRange >=2;  

------------------------------------------------------------------------------------------------------------------------------

------ Rank Aggerate ----------

SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank,
    SUM(BasicSalary) OVER () AS TotalBasicSalary,        
    AVG(BasicSalary) OVER () AS AverageBasicSalary       
FROM 
    EmployeeSalary;
    
    
    SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank,
    SUM(BasicSalary) OVER () AS TotalBasicSalary,        
    AVG(BasicSalary) OVER () AS AverageBasicSalary,       
    COUNT(*) OVER () AS EmployeeCount                      
FROM 
    EmployeeSalary;

SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS SalaryRank,
    SUM(BasicSalary) OVER (PARTITION BY Designation) AS TotalBasicSalary,        
    AVG(BasicSalary) OVER (PARTITION BY Designation) AS AverageBasicSalary,       
    COUNT(*) OVER (PARTITION BY Designation) AS EmployeeCount                      
FROM 
    EmployeeSalary;


SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS SalaryRank,
    DENSE_RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS DenseSalaryRank,  
    ROW_NUMBER() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS RowNumberRank,  
    SUM(BasicSalary) OVER (PARTITION BY Designation) AS TotalBasicSalary,        
    AVG(BasicSalary) OVER (PARTITION BY Designation) AS AverageBasicSalary,       
    COUNT(*) OVER (PARTITION BY Designation) AS EmployeeCount            
FROM 
    EmployeeSalary;
    
    
   -------- RANK, DENSE, ROW_NUMEBER --------
   -------------------------------------
    
    SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank,  
    DENSE_RANK() OVER (ORDER BY BasicSalary DESC) AS DenseSalaryRank, 
    ROW_NUMBER() OVER (ORDER BY BasicSalary DESC) AS RowNumberRank,  
    SUM(BasicSalary) OVER () AS TotalBasicSalary,    
    AVG(BasicSalary) OVER () AS AverageBasicSalary,      
    COUNT(*) OVER () AS EmployeeCount                   
FROM 
    EmployeeSalary;


WITH RankedEmployees AS (
    SELECT 
        Employee_id,
        EmployeeName,
        Designation,
        Department,
        BasicSalary,
        SalaryMonth,
        RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank,          -- RANK
        DENSE_RANK() OVER (ORDER BY BasicSalary DESC) AS DenseSalaryRank, -- DENSE_RANK
        ROW_NUMBER() OVER (ORDER BY BasicSalary DESC) AS RowNumberRank     -- ROW_NUMBER
    FROM 
        EmployeeSalary
)
SELECT * FROM RankedEmployees;


--- Rank employees by their BasicSalary in descending order using RANK -----

SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    BasicSalary, 
    RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank
FROM EmployeeSalary;

-----------------------------------------------------------------

------- Stored Procedure -----------------
---------------------------------------------------------------------


select * from EmployeeSalary;

DELIMITER $$
CREATE PROCEDURE GetEmployeeSalary()
BEGIN
SELECT * From EmployeeSalary;
END $$
DELIMITER $$


CALL GetEmployeeSalary();

DROP PROCEDURE if exists GetEmployeeSalary;


DELIMITER $$

CREATE PROCEDURE GetEmployeeSalariesByMonth(IN salary_month VARCHAR(20))
BEGIN
    SELECT Employee_id, EmployeeName, Designation, Department, BasicSalary, SalaryMonth
    FROM EmployeeSalary
    WHERE SalaryMonth = salary_month;
END $$
DELIMITER ;

CALL GetEmployeeSalariesByMonth('September 2024');

DROP PROCEDURE if exists GetEmployeeSalariesByMonth;
-------------------------------------------------------------------------

DELIMITER $$

CREATE PROCEDURE GetEmployeeByID(IN empID INT)
BEGIN
   SELECT * FROM EmployeeSalary
   WHERE Employee_id = empID;
END $$

DELIMITER ;

CALL GetEmployeeByID(2);

Use Projectdmart;


DELIMITER $$

Create Procedure GetEmployeeBYID (IN empID int)
BEGIN
Select * from EmployeeSalary
WHERE Employee_id = empID;
END $$
DELIMITER $$

Call GetEmployeeBYID(3);

---- I want Department----------

	DELIMITER $$
	CREATE PROCEDURE EmployeebyDepartment(IN EMP_DEP Varchar(20))
	BEGIN
	SELECT * FROM EmployeeSalary
	WHERE Department = EMP_DEP;
	END $$
	DELIMITER $$

	CALL EmployeebyDepartment('Sales');
    
    
--------I want EmployeeCount--------------

DELIMITER $$

CREATE PROCEDURE GetEmployeeCount()
BEGIN
SELECT Count(*) as EmployeeCount From EmployeeSalary;
End$$
DELIMITER $$

call GetEmployeeCount();

-------I want DepartmentCount------


CREATE PROCEDURE GetEmpDepartmentCount()
BEGIN
   SELECT Department, COUNT(*) AS DepartmentCount
   FROM EmployeeSalary
   GROUP BY Department;
END $$

DELIMITER ;
call GetEmpDepartmentCount()

------------------------------------------------------------
 ----- Aggregate Functions ---------

DELIMITER $$

CREATE PROCEDURE GetEmpDepartmentStats()
BEGIN
   SELECT Department, 
          COUNT(*) AS DepartmentCount,
          SUM(BasicSalary) AS TotalSalary,
          AVG(BasicSalary) AS AverageSalary,
          MAX(BasicSalary) AS MaxSalary,
          MIN(BasicSalary) AS MinSalary
   FROM EmployeeSalary
   Group  BY Department;
END $$

DELIMITER ;

CALL GetEmpDepartmentStats
----------------------------------------------------------------------------

DELIMITER $$

CREATE PROCEDURE GetEmployeeSalary()
BEGIN
   SELECT Employee_id, EmployeeName,
          SUM(BasicSalary) AS TotalSalary,
          MAX(BasicSalary) AS MaxSalary,
          MIN(BasicSalary) AS MinSalary, 
          AVG(BasicSalary) AS AvgSalary
   FROM EmployeeSalary
   GROUP BY Employee_id, EmployeeName
   ORDER BY EmployeeName;
END $$

DELIMITER ;

CALL GetEmployeeSalary();

Select * from EmployeeSalary;
-----------------------------------------------------------------------------------------------------------------------
---- IN , out and INout----------
----------------------------------------------------

-------- Stored procedure for double joins -------

joins for Customers, Sales and Stores
---------------------------------------

DELIMITER //
CREATE PROCEDURE GetCustomerAndStoreJoin()
BEGIN
    SELECT *
    FROM Customers AS C
    INNER JOIN Sales AS S ON C.Customer_id = S.Customer_id
    INNER JOIN Stores AS St ON ST.Store_id = S.Store_id;
END //
DELIMITER ;

Call GetCustomerAndStoreJoin();

--------------------------------------

---------------Joins for Products, Sales and SalesDetails -----

DELIMITER //
CREATE PROCEDURE Getjoinsfor_psds()

BEGIN
SELECT 
p.Product_id, p.ProductName, p.Price, s.Sale_id, sd.SaleDetail_id
FROM Products AS p
JOIN SalesDetails AS sd ON p.Product_id = sd.Product_id
JOIN Sales AS s ON sd.Sale_id = s.Sale_id;
END //

DELIMITER ;

CALL Getjoinsfor_psds()

--------------------------------------------------
-------------------------joins for Products, Stores and Inventory -------


  select * from Products;


DELIMITER //

CREATE PROCEDURE GetProductInventoryStoreDetails()
BEGIN
    SELECT *
    FROM Products AS P
    JOIN Inventory AS inv ON p.Product_id = inv.Product_id
    JOIN Stores AS st on st.Store_id = inv.Store_id;
END //

DELIMITER ; 

call GetProductInventoryStoreDetails;

------- JOins Stores, Sales and Revenue -------


DELIMITER //
CREATE PROCEDURE GetStoresSalesRevenue()
Begin
Select * 
from Stores as st
inner join Revenue as r
on st.Store_id = r.Store_id
inner join Sales as s
on s.Sale_id = r.Sale_id;
END //

DELIMITER ;

CALL GetStoresSalesRevenue;

--------------------------------------------------------------------------------------------------------------

------ Stored Procedure for RANK, DENSE RANK, ROW_NUMBER --------------

DELIMITER //

CREATE PROCEDURE GetTotalBasicSalary()
BEGIN
    SELECT 
        SUM(BasicSalary) AS sum_BasicSalary
    FROM 
        EmployeeSalary;
END //

DELIMITER ;

CALL GetTotalBasicSalary;

DELIMITER //

CREATE PROCEDURE GetEmployeeSalaryWithTotal()
BEGIN
    SELECT 
        Employee_id, 
        EmployeeName, 
        Designation, 
        Department, 
        BasicSalary,
        SUM(BasicSalary) OVER () AS Sum_BasicSalary
    FROM 
        EmployeeSalary;
END //

DELIMITER ;
CALL GetEmployeeSalaryWithTotal;

DELIMITER //
CREATE PROCEDURE GETSACMINMAX()
BEGIN

SELECT 
    Employee_id, 
    EmployeeName, 
    Designation, 
    Department, 
    BasicSalary,
    SUM(BasicSalary) OVER () AS Total_BasicSalary,
    AVG(BasicSalary) OVER () AS AVG_BasicSalary,
    COUNT(*) OVER () AS Total_Employees,
    MIN(BasicSalary) OVER () AS Min_BasicSalary,
    MAX(BasicSalary) OVER () AS Max_BasicSalary
FROM 
    EmployeeSalary;
    END //
DELIMITER ;    

CALL GETSACMINMAX;

DELIMITER //

CREATE PROCEDURE GetEmployeeSalaryDetailsWithRank()
BEGIN
    SELECT 
        Employee_id,
        EmployeeName,
        Designation,
        BasicSalary,
        RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS SalaryRank,
        SUM(BasicSalary) OVER (PARTITION BY Designation) AS TotalBasicSalary,
        AVG(BasicSalary) OVER (PARTITION BY Designation) AS AverageBasicSalary
    FROM 
        EmployeeSalary;
END //

DELIMITER ;

call GetEmployeeSalaryDetailsWithRank;
-----------------------------------------------------------------------------------------------------------
---- DENSE RANK --------

DELIMITER //
CREATE PROCEDURE GetDENSEEmployeeBasicSalary()

    SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    DENSE_RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank
FROM 
    EmployeeSalary;
    
End//
DELIMITER ;

CALL GetDENSEEmployeeBasicSalary;
----------------------------------------------------------------------------------------

-------------------- ROW_NUMBER------------------------------


DELIMITER //
CREATE PROCEDURE GETEMPSALARYROW_NUMBER()
BEGIN
SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    ROW_NUMBER () OVER (ORDER BY BasicSalary DESC) AS SalaryRank
FROM 
    EmployeeSalary;
END//
DELIMITER ;    

CALL GETEMPSALARYROW_NUMBER;
----------------------------------------------------------------------------------------

--- Combain RANK, DENSE RANK, ROW_NUMBER -----------
---------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE GETRANK_DENSE_ROW_NUMBER_for_EmployeeSalary()
BEGIN
    SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (ORDER BY BasicSalary DESC) AS SalaryRank,  
    DENSE_RANK() OVER (ORDER BY BasicSalary DESC) AS DenseSalaryRank, 
    ROW_NUMBER() OVER (ORDER BY BasicSalary DESC) AS RowNumberRank,  
    SUM(BasicSalary) OVER () AS TotalBasicSalary,    
    AVG(BasicSalary) OVER () AS AverageBasicSalary,      
    COUNT(*) OVER () AS EmployeeCount                   
FROM 
    EmployeeSalary;
END//
DELIMITER ;
    
CALL GETRANK_DENSE_ROW_NUMBER_for_EmployeeSalary;


DELIMITER //
CREATE PROCEDURE GET_PARTITIONBY_GETRANK_DENSE_ROW_NUMBER_for_EmployeeSalary()
SELECT 
    Employee_id,
    EmployeeName,
    Designation,
    BasicSalary,
    RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS SalaryRank,
    DENSE_RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS DenseSalaryRank,  
    ROW_NUMBER() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS RowNumberRank,  
    SUM(BasicSalary) OVER (PARTITION BY Designation) AS TotalBasicSalary,        
    AVG(BasicSalary) OVER (PARTITION BY Designation) AS AverageBasicSalary,       
    COUNT(*) OVER (PARTITION BY Designation) AS EmployeeCount            
FROM 
    EmployeeSalary;
END//
DELIMITER ;    

CALL GET_PARTITIONBY_GETRANK_DENSE_ROW_NUMBER_for_EmployeeSalary;
-------------------------------------------------------------------------------------------------------------------------------------

------- Data Analysis Questions --------------

------------------ Customer Analysis ------------------------------------

1.Customer Information Retrieval:
Could you write a query to retrieve the first names, last names, and cities of all customers?

DELIMITER $$
CREATE PROCEDURE GetCustomerInformation()
BEGIN
    SELECT FirstName, LastName, City
    FROM Customers;
END $$
DELIMITER ;

call  GetCustomerInformation;
--------------------------------------------------------------

2.Product Price Inquiry:
How would you formulate a query to identify all products priced above 500?

DELIMITER $$
CREATE PROCEDURE GetProductsAbovePrice()
BEGIN
    SELECT *
    FROM Products
    WHERE price > 500;
END $$
DELIMITER ;

CALL GetProductsAbovePrice();
-----------------------------------------------------------

3.Store Count Assessment:
Can you provide a query to count the total number of stores listed in the Stores table?

DELIMITER $$
CREATE PROCEDURE GetTotalStores()
BEGIN
    SELECT COUNT(*) AS TotalStores
    FROM Stores;
END $$
DELIMITER ;

CALL GetTotalStores();
----------------------------------------

4.5Unique Customer Cities:
Please write a query to list the distinct cities where customers reside.

DELIMITER $$
CREATE PROCEDURE GetUniqueCustomerCities()
BEGIN
    SELECT DISTINCT City
    FROM Customers;
END $$
DELIMITER ;

CALL GetUniqueCustomerCities();
------------------------------------------------------

5.Customer Sales Totals:
How would you construct a query to retrieve the total number of sales made by each customer?

DELIMITER $$
CREATE PROCEDURE GetCustomerSalesTotals()
BEGIN
    SELECT Customer_id, COUNT(*) AS TotalSales
    FROM Sales
    GROUP BY Customer_id;
END $$
DELIMITER ;

CALL GetCustomerSalesTotals;

drop procedure GetCustomerSalesTotals;
--------------------------------------------------------------------------------------------
 
----- Product Analysis ------
-----------------------------------------------------------

1. Retrieve All Product Details:
How can you retrieve all the products from the Products table using a stored procedure?

DELIMITER $$
CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT * FROM Products;
END $$
DELIMITER ;

CALL GetAllProducts();
--------------------------------------------

2.Count of Products in Each Category:
How can you find the count of products grouped by category using a stored procedure?

DELIMITER $$
CREATE PROCEDURE CountProductsInEachCategory()
BEGIN
    SELECT Category, COUNT(*) AS product_count 
    FROM Products 
    GROUP BY Category;
END $$
DELIMITER ;

CALL CountProductsInEachCategory();
--------------------------------------------------------

3. Top-N Expensive Products:
How can you retrieve the top N most expensive products using a stored procedure?

DELIMITER $$
CREATE PROCEDURE GetTopExpensiveProducts(IN limit_count INT)
BEGIN
    SELECT * 
    FROM Products 
    ORDER BY price DESC 
    LIMIT limit_count;
END $$
DELIMITER ;

CALL GetTopExpensiveProducts(5);
---------------------------------------------------

4. List out  Products Under a Specific Price
How can you list all products that are priced under a specific amount using a stored procedure?

DELIMITER $$
CREATE PROCEDURE GetProductsUnderPrice(IN maxPrice DECIMAL(10, 2))
BEGIN
    SELECT *
    FROM Products
    WHERE Price < maxPrice;
END $$
DELIMITER ;

CALL GetProductsUnderPrice(300);
--------------------------------------------------------

5. List out  Average Price of Products
How can you find the average price of products?

DELIMITER $$

CREATE PROCEDURE GetAveragePrice()
BEGIN
    SELECT AVG(Price) AS AveragePrice
    FROM Products;
END $$

DELIMITER ;

Call GetAveragePrice()

-----------------------------------------------------------------

------ Store Analysis ------
-----------------------------------------------------------

1. What is the total number of stores located in each state?

DELIMITER $$

CREATE PROCEDURE GetTotalStoresByState()
BEGIN
    SELECT State, COUNT(*) AS TotalStores
    FROM Stores
    GROUP BY State;
END $$

DELIMITER ;

Call GetTotalStoresByState()
-----------------------------------------

2. Which cities have the highest concentration of stores?

DELIMITER $$
CREATE PROCEDURE GetTopCitiesByStoreCount(IN topN INT)
BEGIN
    SELECT City, COUNT(*) AS TotalStores
    FROM Stores
    GROUP BY City
    ORDER BY TotalStores DESC
    LIMIT topN;
END $$
DELIMITER ;

Call GetTopCitiesByStoreCount(3);
-------------------------------------------------
3. What are the top three stores based on name length or alphabetically?

DELIMITER $$
CREATE PROCEDURE GetTopStoresByNameLength(IN topN INT)
BEGIN
    SELECT StoreName
    FROM Stores
    ORDER BY LENGTH(StoreName) DESC
    LIMIT topN;
END $$
DELIMITER ;

call GetTopStoresByNameLength(3);
------------------------------------------
4. How many stores are there in each city?
DELIMITER $$
CREATE PROCEDURE GetStoresByCity()
BEGIN
    SELECT City, COUNT(*) AS TotalStores
    FROM Stores
    GROUP BY City;
END $$
DELIMITER ;

Call GetStoresByCity();
------------------------------------------------------

------- Sales Analysis -------
------------------------------------------------------------------

1. List out Total Sales Amount for Each Store ?

DELIMITER $$
CREATE PROCEDURE GetTotalSalesByStore()
BEGIN
    SELECT Store_id, SUM(TotalAmount) AS TotalSales
    FROM Sales
    GROUP BY Store_id;
END $$
DELIMITER ;

call GetTotalSalesByStore();
---------------------------------------------------------
2. List out Customer with the Highest Total Purchases ?

DELIMITER $$
CREATE PROCEDURE GetTopCustomer()
BEGIN
    SELECT Customer_id, SUM(TotalAmount) AS TotalPurchases
    FROM Sales
    GROUP BY Customer_id
    ORDER BY TotalPurchases DESC
    LIMIT 1;
END $$
DELIMITER ;
 call GetTopCustomer();
 --------------------------------------------------
3. List Out Average Sale Amount Across All Transactions ?

DELIMITER $$
CREATE PROCEDURE GetAverageSaleAmount()
BEGIN
    SELECT AVG(TotalAmount) AS AverageSale
    FROM Sales;
END $$
DELIMITER ;
call GetAverageSaleAmount();
---------------------------------------------------------
4 list out Number of Sales Made on Each Date?

DELIMITER $$
CREATE PROCEDURE GetSalesCountByDate()
BEGIN
    SELECT SaleDate, COUNT(*) AS TotalSales
    FROM Sales
    GROUP BY SaleDate;
END $$
DELIMITER ;

Call GetSalesCountByDate();
-------------------------------------
5. List out Total Sales Amount for Each Store with Store Names?

DELIMITER $$
CREATE PROCEDURE GetTotalSalesByStoreWithNames()
BEGIN
    SELECT s.Store_id, st.StoreName, SUM(s.TotalAmount) AS TotalSales
    FROM Sales s
    JOIN Stores st ON s.Store_id = st.Store_id
    GROUP BY s.Store_id, st.StoreName;
END $$
DELIMITER ;

call GetTotalSalesByStoreWithNames();
---------------------------------------------------

6. list out Customers and Their Total Purchases by Store?

DELIMITER $$
CREATE PROCEDURE GetCustomerPurchasesByStore()
BEGIN
    SELECT s.Customer_id, SUM(s.TotalAmount) AS TotalPurchases, st.StoreName
    FROM Sales s
    JOIN Stores st ON s.Store_id = st.Store_id
    GROUP BY s.Customer_id, st.StoreName;
END $$
DELIMITER ;

call GetCustomerPurchasesByStore();
---------------------------------------------------------

------ Sales Detail Anslysis -----------

 1. Total Quantity Sold for Each Product

DELIMITER $$
CREATE PROCEDURE GetTotalQuantitySoldByProduct()
BEGIN
    SELECT sd.Product_id, SUM(sd.Quantity) AS TotalQuantity
    FROM SalesDetails sd
    GROUP BY sd.Product_id;
END $$
DELIMITER ;

CAll GetTotalQuantitySoldByProduct();
-----------------------------------------------------------

2. Total Sales Amount by Product

DELIMITER $$
CREATE PROCEDURE GetTotalSalesAmountByProduct()
BEGIN
    SELECT sd.Product_id, SUM(sd.TotalPrice) AS TotalSales
    FROM SalesDetails sd
    GROUP BY sd.Product_id;
END $$
DELIMITER ;

Call  GetTotalSalesAmountByProduct();
-------------------------------------------------------
 3. Average Tax Amount Per Sale
 
DELIMITER $$
CREATE PROCEDURE GetAverageTaxAmount()
BEGIN
    SELECT AVG(sd.TaxAmount) AS AverageTax
    FROM SalesDetails sd;
END $$
DELIMITER ;

call  GetAverageTaxAmount();
--------------------------------------------------------

4. Total Tax Collected by Store

DELIMITER $$
CREATE PROCEDURE GetTotalTaxCollectedByStore()
BEGIN
    SELECT s.Store_id, st.StoreName, SUM(sd.TaxAmount) AS TotalTaxCollected
    FROM SalesDetails sd
    JOIN Sales s ON sd.Sale_id = s.Sale_id
    JOIN Stores st ON s.Store_id = st.Store_id
    GROUP BY s.Store_id, st.StoreName;
END $$

DELIMITER ;

call  GetTotalTaxCollectedByStore();
-------------------------------------------------

---------- Inventory Analysis -------------
-----------------------------------------------------------------------------

1. What is the total stock quantity of all products in the inventory?

DELIMITER $$
CREATE PROCEDURE GetTotalStockQuantity()
BEGIN
    SELECT SUM(StockQuantity) AS TotalStock
    FROM Inventory;
END $$
DELIMITER ;

CALL GetTotalStockQuantity();
----------------------------------------------

2. How many products are available in each store?

DELIMITER $$
CREATE PROCEDURE GetProductCountPerStore()
BEGIN
    SELECT Store_id, COUNT(*) AS ProductCount
    FROM Inventory
    GROUP BY Store_id;
END $$
DELIMITER ;

CALL GetProductCountPerStore();
-----------------------------------------

3. Which product has the highest stock quantity?

DELIMITER $$
CREATE PROCEDURE GetHighestStockProduct()
BEGIN
    SELECT Product_id, StockQuantity
    FROM Inventory
    ORDER BY StockQuantity DESC
    LIMIT 1;
END $$
DELIMITER ;
CALL GetHighestStockProduct();

DELIMITER $$
CREATE PROCEDURE GetHighestStockProductwitName()
BEGIN
    SELECT 
        inv.Product_id, 
        p.ProductName, 
        inv.StockQuantity
    FROM Inventory inv
    JOIN Products p ON inv.Product_id = p.Product_id
    ORDER BY inv.StockQuantity DESC
    LIMIT 1;
END $$
DELIMITER ;

CALL GetHighestStockProductwitName();
--------------------------------------------------------
4. List all products with stock quantity below a certain threshold (e.g., 300)?
DELIMITER $$
CREATE PROCEDURE GetLowStockProducts(IN threshold INT)
BEGIN
    SELECT 
        inv.Product_id, 
        p.ProductName, 
        inv.StockQuantity
    FROM Inventory inv
    JOIN Products p ON inv.Product_id = p.Product_id
    WHERE inv.StockQuantity < threshold;
END $$
DELIMITER ;

CALL GetLowStockProducts(300);
------------------------------------------------------------

---- Revenue Analysis ------
----------------------------------------------------------

1. Total Revenue by Store
How can you retrieve the total revenue generated by each store?

DELIMITER $$
CREATE PROCEDURE GetTotalRevenueByStore()
BEGIN
    SELECT Store_id, SUM(TotalRevenue) AS TotalRevenue
    FROM Revenue
    GROUP BY Store_id;
END $$
DELIMITER ;

call GetTotalRevenueByStore();
------------------------------------------------
2. Average Revenue per Sale
What is the average revenue generated per sale?

DELIMITER $$
CREATE PROCEDURE GetAverageRevenuePerSale()
BEGIN
    SELECT AVG(TotalRevenue) AS AverageRevenue
    FROM Revenue;
END $$
DELIMITER ;

call GetAverageRevenuePerSale();
---------------------------------
3. Total Tax Amount Collected
How much total tax has been collected?

DELIMITER $$
CREATE PROCEDURE GetTotalTaxCollected()
BEGIN
    SELECT SUM(TaxAmount) AS TotalTaxCollected
    FROM Revenue;
END $$
DELIMITER ;

Call GetTotalTaxCollected();
-------------------------------------------------------
4. Revenue Summary by Tax Percentage
What is the total revenue generated categorized by tax percentage?
	
DELIMITER $$
CREATE PROCEDURE GetRevenueSummaryByTaxPercentage()
BEGIN
    SELECT TaxPercentage, SUM(TotalRevenue) AS TotalRevenue
    FROM Revenue
    GROUP BY TaxPercentage;
END $$
DELIMITER ;

call GetRevenueSummaryByTaxPercentage();
-------------------------------------------------------------------
5. Find the Highest Tax Amount in a Specific Store
How can you find the highest tax amount collected from a specific store?

DELIMITER $$
CREATE PROCEDURE GetMaxTaxByStore(IN storeID INT)
BEGIN
    SELECT MAX(TaxAmount) AS MaxTax
    FROM Revenue
    WHERE Store_id = storeID;
END $$
DELIMITER ;

CALL GetMaxTaxByStore(7);
---------------------------------------------------------
6. List All Revenue Records Above a Certain Amount
How can you list all revenue records where the total revenue is above a certain amount?

DELIMITER $$
CREATE PROCEDURE GetRevenueAboveAmount(IN minAmount DECIMAL(10, 2))
BEGIN
    SELECT *
    FROM Revenue
    WHERE TotalRevenue > minAmount;
END $$
DELIMITER ;
Call  GetRevenueAboveAmount(3000);

DROP PROCEDURE IF EXISTS GetRevenueAboveAmount;
-------------------------------------------------------
7.How can you retrieve the revenue, tax, store name, sale date, 
and total amount for all records sorted by revenue and tax in descending order?

DELIMITER $$
CREATE PROCEDURE GetRevenueWithJoins()
BEGIN
    SELECT 
        r.Revenue_id,r.TotalRevenue,r.TaxAmount,s.StoreName,sa.SaleDate,sa.TotalAmount
    FROM Revenue r
    JOIN Stores s ON r.Store_id = s.Store_id
    JOIN Sales sa ON r.Sale_id = sa.Sale_id
    ORDER BY r.TotalRevenue DESC, r.TaxAmount DESC;
END $$
DELIMITER ;
call GetRevenueWithJoins();
----------------------------------------------------------------------------------

------- Employee Salary ----------
------------------------------------------------------------------------------------

1. What is the total salary expense for the month of September 2024?

DELIMITER $$
CREATE PROCEDURE GetTotalSalaryExpense()
BEGIN
    SELECT SUM(BasicSalary) AS TotalSalaryExpense
    FROM EmployeeSalary
    WHERE SalaryMonth = 'September 2024';
END $$
DELIMITER ;

CALL GetTotalSalaryExpense();
--------------------------------------------------------------------
2. Who earns the highest salary in the Sales department?

DELIMITER $$
CREATE PROCEDURE GetHighestSalaryInSales()
BEGIN
    SELECT EmployeeName, BasicSalary
    FROM EmployeeSalary
    WHERE Department = 'Sales'
    ORDER BY BasicSalary DESC
    LIMIT 1;
END $$
DELIMITER ;

CALL GetHighestSalaryInSales();
------------------------------------------------------------------------------

 3. Who is the highest earner in the entire department for September 2024?
 
DELIMITER $$
CREATE PROCEDURE GetHighestEarner()
BEGIN
    SELECT EmployeeName, Designation, Department, BasicSalary
    FROM EmployeeSalary
    WHERE SalaryMonth = 'September 2024'
    ORDER BY BasicSalary DESC
    LIMIT 1;
END $$
DELIMITER ;

CALL GetHighestEarner();
------------------------------------------------------
4. What is the average salary of employees in the organization?

DELIMITER $$
CREATE PROCEDURE GetAverageSalary()
BEGIN
    SELECT AVG(BasicSalary) AS AverageSalary
    FROM EmployeeSalary;
END $$
DELIMITER ;

CALL GetAverageSalary();
----------------------------------------------------------
5. How many employees are there in each designation?

DELIMITER $$
CREATE PROCEDURE CountEmployeesByDesignation()
BEGIN
    SELECT Designation, COUNT(*) AS EmployeeCount
    FROM EmployeeSalary
    GROUP BY Designation;
END $$
DELIMITER ;

CALL CountEmployeesByDesignation();

------------------------------------ END ----------------------------------------------------------------




























































































 





















 







































