SELECT Name_of_Passenger, COUNT(Ticket.Ticket_Id) as Tickets
	FROM Passenger INNER JOIN Ticket
	ON Passenger.Passenger_Id = Ticket.Passenger_Id
	GROUP BY Name_of_Passenger;

SELECT Board_Number, Type_Of_Plane, YEAR(Year_Create) AS Year, MONTHNAME(Year_Create) as Month, COUNT(Plane_Id) as Count
	FROM Plane GROUP BY Year, Month WITH ROLLUP;

SELECT Name_of_Passenger as Name, AVG(Price) AS Avg_Price
	FROM Passenger INNER JOIN Ticket ON Passenger.Passenger_Id = Ticket.Passenger_Id
	GROUP BY Name;

SELECT Name_of_Passenger as Name, (COUNT(Ticket.Ticket_id)*AVG(Price)) as Max_Total_Price 
	FROM Passenger INNER JOIN Ticket ON Passenger.Passenger_Id = Ticket.Passenger_Id
	GROUP BY Name ORDER BY Max_Total_Price DESC LIMIT 1;