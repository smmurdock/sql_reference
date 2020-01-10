-- CONVERT A SUBQUERY TO A CTE

-- SUBQUERY EXAMPLE
SELECT
  all_orders.EmployeeID, 
  Employees.LastName,
  all_orders.order_count AS total_order_count, 
  late_orders.order_count AS late_order_count
  FROM (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    GROUP BY EmployeeID
  ) all_orders
  JOIN (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    WHERE RequiredDate <= ShippedDate
    GROUP BY EmployeeID 
  ) late_orders
  ON all_orders.EmployeeID = late_orders.employeeID
  JOIN Employees
  ON all_orders.EmployeeId = Employees.Id


-- REWRITTEN WITH CTE
WITH all_orders AS (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    GROUP BY EmployeeID
),
  late_orders AS (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    WHERE RequiredDate <= ShippedDate
    GROUP BY EmployeeID 
)
SELECT 
  Employees.ID, LastName, 
  all_orders.order_count AS total_order_count,
  late_orders.order_count AS late_order_count
FROM Employees
JOIN all_orders ON Employees.ID = all_orders.EmployeeID 
JOIN late_orders ON Employees.ID = late_orders.EmployeeID