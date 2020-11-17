SELECT Name_of_Passenger, Last_Name_of_Passenger
	FROM Passenger
	WHERE Passenger_Id = 13;

SELECT Name_of_Passenger, Last_Name_of_Passenger, Place, Price
	FROM Passenger LEFT JOIN Ticket ON Passenger.Passenger_id = Ticket.Passenger_Id;

SELECT Name_of_Passenger, Last_Name_of_Passenger, Place, Price
	FROM Passenger INNER JOIN Ticket ON Passenger.Passenger_id = Ticket.Passenger_Id
	WHERE Price <= 135;

SELECT Name_of_Passenger, Last_Name_of_Passenger, Place, Price, Board_Number, Register_Sign, Type_Of_Plane
	FROM (Passenger INNER JOIN Ticket) INNER JOIN Plane
	ON Passenger.Passenger_id = Ticket.Passenger_Id 
	AND Ticket.Plane_Id = Plane.Plane_Id
	WHERE Passenger.Name_of_Passenger IN ("Petr", "Yura");

SELECT Name_of_Passenger, Last_Name_of_Passenger, Place, Price
	FROM (Passenger INNER JOIN Ticket) INNER JOIN Plane
	ON Passenger.Passenger_id = Ticket.Passenger_Id 
	WHERE Passenger.Passenger_id IN (SELECT Passenger_Id FROM Ticket
	WHERE Ticket.Price > 100.00)
	GROUP BY Name_of_Passenger
	ORDER BY Name_of_Passenger LIMIT 3;

SELECT Name_of_Passenger, Last_Name_of_Passenger
	FROM Passenger
	WHERE NOT EXISTS (SELECT* FROM Ticket WHERE Ticket.Passenger_Id = Passenger.Passenger_id );

SELECT *
	FROM Plane
	WHERE  2020 - year(Year_Create) > 3 AND Type_Of_Plane = "Boing";