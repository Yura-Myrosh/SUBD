CREATE TABLE Passenger1 AS SELECT * FROM Passenger
WHERE length(airline.passenger.Name_of_Passenger) >= 6;

CREATE TABLE Passenger2 AS SELECT * FROM Passenger
WHERE length(airline.passenger.Name_of_Passenger) <= 6;

SELECT* FROM Passenger1 UNION SELECT* FROM Passenger2;

SELECT* FROM Passenger1
	WHERE Passenger_Id IN (SELECT Passenger_Id FROM Passenger2);
    
SELECT* FROM Passenger2
	WHERE Passenger_Id NOT IN (SELECT Passenger_Id FROM Passenger1);

SELECT* FROM Passenger1, Passenger2;