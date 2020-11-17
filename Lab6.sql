CREATE VIEW Ticket1 AS SELECT DISTINCT Passenger_Id, Place, Price
	FROM Ticket;

SELECT *
	FROM Ticket
	WHERE price >= 120 && price <= 140;

SELECT passenger.Passenger_Id, passenger.Name_of_Passenger, passenger.Last_Name_of_Passenger, ticket.Place, ticket.Price
	FROM passenger, ticket
	WHERE passenger.Passenger_Id = ticket.Passenger_Id;

SELECT passenger.Passenger_Id, passenger.Name_of_Passenger, passenger.Last_Name_of_Passenger, ticket.Place, ticket.Price
	FROM passenger, ticket
	WHERE passenger.Passenger_Id = ticket.Passenger_Id AND passenger.Passenger_Id != ticket.Passenger_Id ;
