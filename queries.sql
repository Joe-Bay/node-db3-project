-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.ProductName, Category.CategoryName
from Product
JOIN Category on Product.CategoryId = Category.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select Orders.Id, Orders.OrderDate, Shipper.CompanyName
from Orders
JOIN Shipper on Orders.ShipVia = Shipper.Id
where Orders.OrderDate < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select OrderDetail.OrderId, Product.ProductName, OrderDetail.Quantity
from Product
JOIN OrderDetail on Product.Id = OrderDetail.ProductId
where OrderDetail.OrderId = "10251"
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select OrderDetail.OrderId, Customer.CompanyName, Employee.LastName
from Orders
JOIN  OrderDetail on Orders.Id = OrderDetail.OrderId
JOIN  Customer on Orders.CustomerId = Customer.Id
JOIN  Employee on Orders.EmployeeId = Employee.Id
group by OrderDetail.OrderId;