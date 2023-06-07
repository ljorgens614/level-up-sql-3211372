-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00')

SELECT *
FROM Orders
WHERE CustomerID = 70 AND OrderID = 1001

INSERT INTO OrdersDishes (OrderID, )
  SELECT OrderID
  FROM Orders
  WHERE CustomerID = 70 AND OrderID = 1001;
  
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES 
  (1001, 7),
  (1001, 20)

UPDATE OrdersDishes
SET DishID = 4
WHERE OrdersDishesID = 4022

SELECT *
FROM OrdersDishes
WHERE OrderID = 1001

SELECT OrderID,
  SUM(DishID) AS 'TotalCost'
FROM OrdersDishes
WHERE OrderID = 1001

SELECT DishID,
  Name,
  Price
FROM Dishes
WHERE
  Name = 'Mini Cheeseburgers'
  OR Name = 'House Salad'
  OR Name = 'Tropical Blue Smoothie'

