CREATE TABLE PurchaseAgreement
(
Purchase_agreement_Id INTEGER NOT NULL PRIMARY KEY UNIQUE,
Airline_Id INTEGER NOT NULL,
Plane_Id INTEGER NOT NULL,
Date_Of_Purchase DATE NOT NULL,
CONSTRAINT FOREIGN KEY (Airline_Id) REFERENCES airline (Airline_Id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FOREIGN KEY (Plane_Id) REFERENCES plane (Plane_Id) ON DELETE CASCADE ON UPDATE CASCADE
);