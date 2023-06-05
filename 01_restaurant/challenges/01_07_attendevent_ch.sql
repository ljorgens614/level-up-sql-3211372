-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT*
FROM Customers
WHERE Email = 'atapley2j@kinetecoinc.com';

SELECT*
FROM InviteResponse;

INSERT INTO InviteResponse (CustomerID, PartySize)
VALUES (92, 3);
