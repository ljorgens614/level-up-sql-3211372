-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM Customers
WHERE 
  FirstName = 'Norby'
  OR LastName = 'Norby';

SELECT *
FROM Reservations
WHERE CustomerID = 64;


DELETE FROM Reservations
WHERE CustomerID = 64
  AND ReservationID = 2000;