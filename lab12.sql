CREATE
TRIGGER airline_delete BEFORE DELETE
ON airline FOR EACH ROW
UPDATE Ticket SET Airline_Id = 2 WHERE Airline_Id = OLD.Airline_Id;

DELETE FROM airline WHERE airline_id = 1;
SELECT* FROM Ticket;

CREATE
TRIGGER ticket_price BEFORE INSERT
ON ticket FOR EACH ROW
SET NEW.Price = NEW.Price*1.1;

INSERT INTO Ticket VALUES
(6, 128, 100, 6, 3, 1), (7, 128, 200, 7, 2, 2), 
(8, 128, 250, 8, 4, 3), (9, 128, 150, 9, 4, 1);

ALTER TABLE Ticket
	ADD COLUMN WhenBy DATE DEFAULT NULL;

CREATE TRIGGER ticket_by AFTER INSERT
ON tickets FOR EACH ROW
UPDATE Ticket SET ticket.whenBy = now()
WHERE Ticket.Ticket_id = NEW.Ticket_Id;

INSERT INTO Tickets VALUES
(8, 128, 110), 
(9, 128, 140);