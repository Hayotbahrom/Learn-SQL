CREATE TABLE Passengers(
	Id int primary key, 
	Firstname varchar(30), 
	Lastname varchar(30),
	Age int check(age > 0)
);

SELECT * FROM Passengers; 

insert into Passengers (Id, firstname, lastname, age)
values
(1, 'Hayotbahrom', 'Nurdinov', 23),
(2, 'Nuriddin', 'Mamadaliyev', 24)
ON conflict (id) do update set firstname = excluded.firstname
returning Id, firstname;