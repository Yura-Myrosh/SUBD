SHOW INDEX FROM Ticket;

CREATE INDEX Passenger_Name_INDX3 ON Passenger (Passenger_Id, Name_Of_Passenger);
SHOW INDEX FROM Passenger;

EXPLAIN  SELECT Name_of_Passenger, Last_Name_of_Passenger, Place, Price, Board_Number, Register_Sign, Type_Of_Plane
FROM (Passenger INNER JOIN Ticket) INNER JOIN Plane
ON Passenger.Passenger_id = Ticket.Passenger_Id 
AND Ticket.Plane_Id = Plane.Plane_Id
WHERE Passenger.Name_of_Passenger IN ("Petr", "Yura");

EXPLAIN  SELECT STRAIGHT_JOIN Name_of_Passenger, Last_Name_of_Passenger, Place, Price, Board_Number, Register_Sign, Type_Of_Plane
FROM (Passenger INNER JOIN Ticket) INNER JOIN Plane
ON Passenger.Passenger_id = Ticket.Passenger_Id 
AND Ticket.Plane_Id = Plane.Plane_Id
WHERE Passenger.Name_of_Passenger IN ("Petr", "Yura");