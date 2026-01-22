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

create table Books(
	id serial primary key,
	title varchar
);

create table Author(
	id serial primary key,
	name varchar(20),
	age int check(age > 18)
);

select * from books;

select * from Authors;

-- add new column to books table 
alter table books add column author_id int;

-- alter table name
alter table Author RENAME TO Authors;

-- add foreign key constraint to books table by author_id
alter table books add constraint author_fkey foreign key(author_id)
references Authors(id) on delete cascade;



