----PROJECT 

---Retrieve all records from the Customers table.
---List all first_name,last_name and Gender.

--Select *
--from CustomerInfo
--Select FirstName , LastName , Gender
--from CustomerInfo

---Retrieve all orders where the order_status is Completed
---Find all products in the Electronics category.

--Select *
--from OrderInfo

--Select *
--from OrderInfo
--where OrderStatus = 'completed'

--Select *
--from ProductInfo

--Select *
--from ProductInfo
--where Category = 'Electronics'

---Get a list of customers sorted by `last_name` in ascending order.
---Display the orders sorted by `order_date` in descending order.

--Select *
--from CustomerInfo

--Select *
--from CustomerInfo
--order by LastName

--Select *
--from OrderInfo

--Select *
--from OrderInfo
--order by Orderdate desc

---Calculate the total revenue from all orders.
---Find the average price of all products.
---Count the total number of orders.

--select SUM(OrderAmount) as TotalRevenue
--from OrderInfo

--select count(OrderAmount) as TotalCount
--from OrderInfo

--Select SUM(Quantity) as TotalOrders
--from OrderDetails

---Get the number of orders placed by each customer.
---Find the total quantity of each product sold.

--select*
--from [dbo].[OrderInfo]

--select CustomerId, count(*) as Total_Orders
--from [dbo].[OrderInfo]
--group by CustomerId

--select*
--from [dbo].[OrderDetails]

--select ProductID, sum (Quantity) as Total_Quantity
--from OrderDetails
--Group by ProductId

---Retrieve all orders along with the customer’s first name, last name, and Gender.

--select *
--from [dbo].[CustomerInfo]

--select *
--from [dbo].[OrderInfo]

--Select OrderId, customerInfo.CustomerId , FirstName , LastName , Gender , Orderdate , OrderAmount , OrderStatus
--from [dbo].[CustomerInfo]
--left join [dbo].[OrderInfo]
--on customerInfo.customerId = Orderinfo.customerId

----List customers who have placed more than 5 orders.

--select *
--from [dbo].[OrderInfo]

--select CustomerId , count(*) as order_count
--from orderinfo
--group by CustomerId
--having count(*) > 5

--Create a column that categorizes orders as 'High', 'Medium', or 'Low' based on `order_amount`.

--select *
--from [dbo].[OrderInfo]

--select orderId , OrderAmount
--Case
--when OrderAmount > 200 then 'High'
--when OrderAmount = 200 then 'Medium'
--Else 'Low'
--end as Category
--from [dbo].[OrderInfo]

