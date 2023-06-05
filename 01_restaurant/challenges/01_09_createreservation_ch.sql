-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT *
FROM Customers
WHERE Email = 'smac@kinetecoinc.com';

SELECT *
FROM Reservations
WHERE CustomerID = 102;

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com');

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (102, '2022-08-12 18:00:00', 5);

UPDATE Customers
SET Phone = '(555) 555-1232'
WHERE CustomerID = 102;

SELECT Reservations.CustomerID,
  Reservations.ReservationID,
  Customers.FirstName,
  Customers.LastName,
  Reservations.PartySize,
  Reservations.Date,
  Customers.Phone
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Reservations.PartySize = 5
  AND Customers.LastName = 'McAdams';