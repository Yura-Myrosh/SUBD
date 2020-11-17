SELECT Name_of_Passenger, Last_Name_of_Passenger
	FROM Passenger
	WHERE Name_of_Passenger LIKE '%a%'
	ORDER BY Name_of_Passenger ASC;

SELECT Passenger_Id, Name_of_Passenger
	FROM Passenger
	ORDER BY Name_of_Passenger DESC LIMIT 7;

SELECT Name_of_Passenger, Place, Price
	FROM Passenger INNER JOIN Ticket
    ON Passenger.Passenger_Id = Ticket.Passenger_Id
	GROUP BY Name_of_Passenger;