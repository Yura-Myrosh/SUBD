USE `airline`;
DROP function IF EXISTS `NameAndSurnameLength`;
DELIMITER $$
USE `airline`$$
CREATE FUNCTION `NameAndSurnameLength` (name CHAR(24), surname CHAR(24))
RETURNS INTEGER
DETERMINISTIC
BEGIN
RETURN length(name) + length(surname);
END$$
DELIMITER ;
SELECT*, NameAndSurnameLength(Passenger.Name_Of_Passenger, Passenger.Last_name_of_passenger) as SumOfPrivateData
FROM passenger;

CREATE DEFINER=`root`@`localhost` PROCEDURE `TicketFind`(IN name CHAR(24), IN surname CHAR(24))
BEGIN 
		CREATE TABLE IF NOT EXISTS Tickets (Ticket_Id INTEGER, Place INTEGER, Price DECIMAL);
        TRUNCATE Tickets;
        INSERT INTO Tickets SELECT Ticket_Id, Place, Price FROM Ticket INNER JOIN Passenger 
        ON Passenger.Passenger_id = Ticket.Passenger_Id
        WHERE Passenger.Name_of_Passenger = name AND Passenger.Last_Name_of_Passenger = surname;
END;

CALL TicketFind("Oleksandr", "Oleksandeow");
SELECT* FROM Tickets;