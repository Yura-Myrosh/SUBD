INSERT INTO Passenger VALUES(1, "Vasyl", "Ivanov");

INSERT INTO Passenger 
VALUES (2, "Maks", "Maksimov"), (3, "Petr", "Petrov"), (4, "Oleksandr", "Oleksandeow");

LOAD DATA INFILE 'C:\Users\Favoryt-B\Desktop\SUBD\airport.tbl' INTO TABLE airport LINES 
TERMINATED BY '\t\n';

UPDATE Airport SET Street = "New_Street"
WHERE Airport_Id = 132;

DELETE FROM Passenger WHERE Name_Of_Passenger = "Vasyl";