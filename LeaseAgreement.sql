CREATE TABLE LeaseAgreement
(
Lease_agreement_Id INTEGER NOT NULL PRIMARY KEY UNIQUE,
Airline_Id INTEGER NOT NULL,
Airport_Id INTEGER NOT NULL,
End_Of_Lease DATE NOT NULL,
CONSTRAINT FOREIGN KEY (Airline_Id) REFERENCES airline (Airline_Id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FOREIGN KEY (Airport_Id) REFERENCES airport (Airport_Id) ON DELETE CASCADE ON UPDATE CASCADE
);