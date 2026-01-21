CREATE TABLE Passengers(
	Id int primary key, 
	Firstname varchar(30), 
	Lastname varchar(30),
	Age int check(age > 0)
);

SELECT * FROM Passengers;