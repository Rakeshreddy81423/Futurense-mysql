create database if not exists airline_db;

-- Client Table
create table  if not exists client
(
	client_id int not null,
    first_name varchar(45) not null,
    middle_name varchar(45),
    last_name varchar(45),
    email varchar(45) not null,
    passport varchar(45) not null,
    iata_country_code char
    
    
)