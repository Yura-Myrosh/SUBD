CREATE TABLE Airport
(
Airport_Id INTEGER NOT NULL PRIMARY KEY UNIQUE,
Airport_Name VARCHAR(150) NOT NULL,
City_Location VARCHAR(150) NOT NULL,
Street VARCHAR(150) NOT NULL,
Hous_Number INTEGER NOT NULL,
Number_of_Takeoffs INTEGER NOT NULL
)