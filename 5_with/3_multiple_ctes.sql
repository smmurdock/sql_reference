-- USING MULTIPLE CTEs IN A QUERY

-- In multiple CTEs, they can only refer to ones declared earlier than themselves

-- CTEs Referencing a CTE
WITH 
  all_sales AS (
    SELECT Orders.Id AS OrderId, Orders.EmployeeId,
     SUM(OrderDetails.UnitPrice * OrderDetails.Quantity) AS invoice_total
     FROM Orders 
     JOIN OrderDetails ON Orders.id = OrderDetails.OrderId
     GROUP BY Orders.ID
  ), 
  revenue_by_employee AS (
     SELECT EmployeeId, SUM(invoice_total) AS total_revenue
     FROM all_sales
     GROUP BY EmployeeID
  ), 
  sales_by_employee AS (
     SELECT EmployeeId, COUNT(*) AS sales_count
     FROM all_sales
     GROUP BY EmployeeId
  )
SELECT 
  Employees.Id,
  Employees.LastName, 
  revenue_by_employee.total_revenue,
  sales_by_employee.sales_count,
  revenue_by_employee.total_revenue/sales_by_employee.sales_count AS    
                                               avg_revenue_per_sale
FROM revenue_by_employee
JOIN sales_by_employee ON revenue_by_employee.EmployeeId = sales_by_employee.EmployeeId
JOIN Employees ON revenue_by_employee.EmployeeId = Employees.Id
ORDER BY total_revenue DESC