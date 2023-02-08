-- Main Query I worked in for Database Programming and Database Processing QAP 1.
-- Completed on February 8, 2023.
-- Completed by Darla Ward.

CREATE TABLE city
(
    id bigint NOT NULL,
    name varchar(255) NOT NULL,
    state varchar(255) NOT NULL,
    population bigint NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.city
	OWNER to postgres;

ALTER TABLE city
  ALTER COLUMN population TYPE varchar(15);
	
insert into city(id, name, state, population)
values(1, 'New York', 'New York', '8,467,513');

insert into city(id, name, state, population)
values(2, 'Los Angeles', 'California', '3,849,297');

insert into city(id, name, state, population)
values(3, 'Chicago', 'Illinois', '2,696,555');

insert into city(id, name, state, population)
values(4, 'San Jose', 'California', '983,489');

insert into city(id, name, state, population)
values(5, 'Dallas', 'Texas', '1,288,457');

insert into city(id, name, state, population)
values(6, 'San Diego', 'California', '1,381,611');

insert into city(id, name, state, population)
values(7, 'Philadelphia', 'Pennsylvania', '1,576,251');

insert into city(id, name, state, population)
values(8, 'Houston', 'Texas', '2,288,250');

insert into city(id, name, state, population)
values(9, 'San Antonio', 'Texas', '1,381,611');

insert into city(id, name, state, population)
values(10, 'Phoenix', 'Arizona', '1,624,569');

ALTER TABLE city
  ALTER COLUMN name TYPE varchar(25);

ALTER TABLE city
  ALTER COLUMN state TYPE varchar(25);

select * from city;

CREATE TABLE passenger
(
    id bigint NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    phone_number varchar(15) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.passenger
    OWNER to postgres;
	
insert into passenger(id, first_name, last_name, phone_number)
values(1, 'Jenny', 'Lynn', '1 202-918-2132');

insert into passenger(id, first_name, last_name, phone_number)
values(2, 'Bob', 'Johnson', '1 505-644-8768');

insert into passenger(id, first_name, last_name, phone_number)
values(3, 'Courtney', 'Wright', '1 505-844-3705');

insert into passenger(id, first_name, last_name, phone_number)
values(4, 'John', 'Oliver', '1 505-612-7458');

insert into passenger(id, first_name, last_name, phone_number)
values(5, 'Ken', 'Bronson', '1 207-835-1884');

insert into passenger(id, first_name, last_name, phone_number)
values(6, 'Kelly', 'Bronson', '1 207-835-1994');

insert into passenger(id, first_name, last_name, phone_number)
values(7, 'Victor', 'Bronson', '1 207-835-1994');

insert into passenger(id, first_name, last_name, phone_number)
values(8, 'Matthew', 'Littney', '1 315-806-6006');

insert into passenger(id, first_name, last_name, phone_number)
values(9, 'Jessica', 'Best-Littney', '1 505-651-8351');

insert into passenger(id, first_name, last_name, phone_number)
values(10, 'Jenny', 'Costa', '1 207-814-1014');

select * from passenger;

ALTER TABLE city
  RENAME COLUMN name TO city_name;
ALTER TABLE city
  RENAME COLUMN state TO city_state;
ALTER TABLE city
  RENAME COLUMN population TO city_population;
  
CREATE TABLE airport
(
    id bigint NOT NULL,
    airport_name varchar(50) NOT NULL,
    airport_code varchar(10) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.airport
	OWNER to postgres;
	
ALTER TABLE airport
  ALTER COLUMN airport_name TYPE varchar(255);
	
insert into airport(id, airport_name, airport_code)
values(1, 'John F. Kennedy International Airport', 'JFK');
insert into airport(id, airport_name, airport_code)
values(2, 'LaGuardia Airport', 'LGA');
insert into airport(id, airport_name, airport_code)
values(3, 'Long Island MacArthur Airport', 'ISP');
insert into airport(id, airport_name, airport_code)
values(4, 'Dallas Fort Worth International Airport', 'DFW');
insert into airport(id, airport_name, airport_code)
values(5, 'George Bush Intercontinental/Houston Airport', 'IAH');
insert into airport(id, airport_name, airport_code)
values(6, 'Los Angeles International Airport', 'LAX');
insert into airport(id, airport_name, airport_code)
values(7, 'San Diego International Airport', 'SAN');
insert into airport(id, airport_name, airport_code)
values(8, 'Norman Y. Mineta San Jose International Airport', 'SJC');
insert into airport(id, airport_name, airport_code)
values(9, 'Philadelphia International Airport', 'PHL');
insert into airport(id, airport_name, airport_code)
values(10, 'Phoenix Sky Harbor International Airport', 'PHX');

CREATE TABLE aircraft
(
    id bigint NOT NULL,
    aircraft_type varchar(50) NOT NULL,
    airline_name varchar(10) NOT NULL,
	number_of_passengers varchar(15) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.aircraft
	OWNER to postgres;

ALTER TABLE aircraft
  ALTER COLUMN airline_name TYPE varchar(50);
  
ALTER TABLE aircraft
  ALTER COLUMN number_of_passengers TYPE varchar(5);
	
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(1, 'Boeing 747', 'American Airlines', '1,534');
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(2, 'Airbus A380 Private Jet', 'JetOne Aviation', '120');
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(3, 'Airbus A380', 'Air Canada', '1,749');
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(4, 'Boeing 787-9 Dreamliner', 'WestJet', '320');
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(5, 'Boeing 737-800', 'Swoop', '189');
insert into aircraft(id, aircraft_type, airline_name, number_of_passengers)
values(6, 'Airbus A350-900', 'Delta Air Lines', '306');

update airport set city_id = 1 where id = 1;
update airport set city_id = 1 where id = 2;
update airport set city_id = 1 where id = 3;
update airport set city_id = 2 where id = 6;
update airport set city_id = 3 where id = 11;
update airport set city_id = 3 where id = 12;

update airport set city_id = 4 where id = 8;
update airport set city_id = 5 where id = 4;
update airport set city_id = 6 where id = 7;
update airport set city_id = 7 where id = 9;
update airport set city_id = 8 where id = 5;
update airport set city_id = 9 where id = 13;
update airport set city_id = 10 where id = 10;


select * from passenger;
select * from city;
select * from airport;
select * from aircraft;

select * from airport a, city c
where a.city_id = c.id
order by a.id;

insert into passenger_aircraft (passenger_id, aircraft_id) values (1, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (1, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (1, 5);
insert into passenger_aircraft (passenger_id, aircraft_id) values (2, 2);
insert into passenger_aircraft (passenger_id, aircraft_id) values (2, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 2);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (4, 2);
insert into passenger_aircraft (passenger_id, aircraft_id) values (5, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (5, 6);
insert into passenger_aircraft (passenger_id, aircraft_id) values (5, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (6, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (6, 6);
insert into passenger_aircraft (passenger_id, aircraft_id) values (6, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (7, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (7, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 5);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 6);
insert into passenger_aircraft (passenger_id, aircraft_id) values (9, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (9, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (9, 5);
insert into passenger_aircraft (passenger_id, aircraft_id) values (10, 6);

select * from passenger_aircraft;

select p.first_name, p.last_name, a.aircraft_type, a.airline_name from passenger p, aircraft a, passenger_aircraft pa
where pa.passenger_id = p.id
and pa.aircraft_id = a.id
order by p.last_name;

insert into city(id, city_name, city_state, city_population)
values(11, 'St.John''s', 'Newfoundland and Labrador', '121,948');

insert into airport(id, airport_name, airport_code)
values(14, 'St. John''s International Airport', 'YYT');

update airport set city_id = 11 where id = 14;

select * from flight;

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(1, 1, 1, 1, 2);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(2, 1, 1, 1, 3);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(3, 1, 2, 1, 4);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(4, 1, 6, 1, 5);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(5, 2, 1, 1, 6);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(6, 2, 4, 1, 7);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(7, 2, 6, 1, 8);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(8, 3, 1, 1, 1);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(9, 4, 1, 5, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(10, 4, 1, 5, 2);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(11, 4, 2, 5, 9);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(12, 4, 4, 5, 10);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(13, 5, 2, 8, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(14, 5, 4, 8, 6);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(15, 5, 4, 8, 9);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(16, 5, 5, 8, 10);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(17, 6, 1, 2, 7);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(18, 6, 2, 2, 4);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(19, 6, 4, 2, 5);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(20, 6, 6, 2, 8);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(21, 7, 2, 6, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(22, 7, 4, 6, 8);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(23, 8, 1, 4, 7);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(24, 8, 1, 4, 3);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(25, 8, 4, 4, 2);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(26, 9, 1, 7, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(27, 9, 1, 7, 3);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(28, 9, 1, 7, 5);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(29, 9, 2, 7, 10);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(30, 10, 2, 10, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(31, 10, 4, 10, 2);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(32, 10, 5, 10, 11);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(33, 11, 1, 3, 9);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(34, 11, 1, 3, 10);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(35, 11, 1, 3, 6);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(36, 11, 4, 3, 8);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(37, 11, 6, 3, 1);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(38, 12, 6, 3, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(39, 12, 6, 3, 2);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(40, 13, 2, 9, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(41, 13, 4, 9, 2);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(42, 13, 4, 9, 7);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(43, 13, 6, 9, 8);

insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(44, 14, 3, 11, 1);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(45, 14, 3, 11, 2);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(46, 14, 3, 11, 7);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(47, 14, 3, 11, 9);
insert into flight(flight_id, airport_id, aircraft_id, depart_id, arrive_id) values(48, 14, 2, 11, 10);

CREATE TABLE arrival_city AS SELECT * FROM city;

select * from arrival_city
order by id;

select * from city;

select  c.city_name as depart_city, c.city_state as depart_state, ap.airport_name as depart_airport, ap.airport_code as depart_code, ac.aircraft_type, ar.city_name as arrival_city, ar.city_state as arrival_state from airport ap, aircraft ac, city c, arrival_city ar, flight f
where ap.id = f.airport_id
and ac.id = f.aircraft_id
and c.id = f.depart_id
and ar.id = f.arrive_id
order by ap.airport_name;

insert into passenger_airport(passenger_id, airport_id) values (1, 2);
insert into passenger_airport(passenger_id, airport_id) values (1, 4);
insert into passenger_airport(passenger_id, airport_id) values (1, 9);
insert into passenger_airport(passenger_id, airport_id) values (2, 11);
insert into passenger_airport(passenger_id, airport_id) values (2, 13);
insert into passenger_airport(passenger_id, airport_id) values (3, 11);
insert into passenger_airport(passenger_id, airport_id) values (3, 13);
insert into passenger_airport(passenger_id, airport_id) values (3, 7);
insert into passenger_airport(passenger_id, airport_id) values (3, 6);
insert into passenger_airport(passenger_id, airport_id) values (4, 1);
insert into passenger_airport(passenger_id, airport_id) values (5, 2);
insert into passenger_airport(passenger_id, airport_id) values (5, 1);
insert into passenger_airport(passenger_id, airport_id) values (6, 2);
insert into passenger_airport(passenger_id, airport_id) values (6, 12);
insert into passenger_airport(passenger_id, airport_id) values (7, 2);
insert into passenger_airport(passenger_id, airport_id) values (8, 8);
insert into passenger_airport(passenger_id, airport_id) values (8, 5);
insert into passenger_airport(passenger_id, airport_id) values (8, 3);
insert into passenger_airport(passenger_id, airport_id) values (9, 10);
insert into passenger_airport(passenger_id, airport_id) values (9, 8);
insert into passenger_airport(passenger_id, airport_id) values (9, 14);
insert into passenger_airport(passenger_id, airport_id) values (10, 14);

select * from passenger_airport;

select p.first_name, p.last_name, a.airport_name, a.airport_code from passenger p, airport a, passenger_airport pa
where pa.passenger_id = p.id
and pa.airport_id = a.id
order by p.last_name;