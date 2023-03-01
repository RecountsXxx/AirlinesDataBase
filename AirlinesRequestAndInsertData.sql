--1) Список квитків з даними клієнта.
SELECT Tickets.TicketNumber, Flights.DepartureCity, Flights.ArrivalCity,Flights.DepartureDate, Flights.ArrivalDate, Tickets.Price
FROM Tickets
JOIN Flights ON Flights.Id = Tickets.FlightId
JOIN Customer ON Customer.Id = Tickets.CustomerId
WHERE Customer.Id = 3

--2) Останні 5 проданих квитків.
SELECT TOP(5) Tickets.TicketNumber, Flights.DepartureCity, Flights.ArrivalCity, Flights.DepartureDate, Flights.ArrivalDate, Tickets.Price
FROM Tickets
JOIN Flights ON Flights.Id = Tickets.FlightId
ORDER BY Tickets.SaleDate DESC 

--3) Топ 3 клієнтів за частотою польотів.
SELECT TOP(3) Customer.Id, Customer.FirstName, Customer.LastName, COUNT(Tickets.id) as Flight_Count
FROM Customer
JOIN Tickets ON Tickets.CustomerId = Customer.Id
GROUP BY Customer.Id, Customer.FirstName, Customer.LastName
ORDER BY Flight_Count DESC

--insert into customer values('Bogdan','Kapriyan','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Diana','Zadiraka','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Dima','Lavrentev','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Roma','Myhal','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Kostya','Zelenko','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Bogdan','Jumatii','bogdankapriyanua@gmail.com','+380985252857')
--insert into customer values('Yaroslav','Kapriyan','bogdankapriyanua@gmail.com','+380985252857')

--insert into Companies values ('Apple Airlines','California','+312412412512')
--insert into Companies values ('Microsoft Airlines','New-york','+312412412512')
--insert into Companies values ('Amazon Airlines','Madrid','+312412412512')
--insert into Companies values ('Google Airlines','Almati','+312412412512')
--insert into Companies values ('China Airlines','Pekin','+312412412512')
--insert into Companies values ('Ukraine Airlines','Kyiv','+312412412512')
--insert into Companies values ('Russia Airlines','Moskow','+312412412512')

--insert into Destinations values ('California','USA')
--insert into Destinations values ('New-York','USA')
--insert into Destinations values ('Madrid','Spain')
--insert into Destinations values ('Almati','Kazah')
--insert into Destinations values ('Pekin','China')
--insert into Destinations values ('Kyiv','UKraine')
--insert into Destinations values ('Moskow','Russia')

--insert into Flights values('111','2023-01-01', '2023-01-01','Kyiv','Lviv', 1,1)
--insert into Flights values('111','2023-01-01', '2023-01-01','Moskva','Lviv', 2,2)
--insert into Flights values('111','2023-01-01', '2023-01-01','Kyiv','Moskva', 3,3)
--insert into Flights values('111','2023-01-01', '2023-01-01','New york','Lviv', 4,4)
--insert into Flights values('111','2023-01-01', '2023-01-01','Kazah','Lviv', 5,5)
--insert into Flights values('111','2023-01-01', '2023-01-01','Madir','Kazah', 6,6)
--insert into Flights values('111','2023-01-01', '2023-01-01','Pekin','Kazah', 7,7)

--insert into Tickets values('1A',234,'18','2023-03-02',1,1)
--insert into Tickets values('1AB',123,'18','2023-03-02',2,2)
--insert into Tickets values('1AC',1000,'18','2023-03-02',3,3)
--insert into Tickets values('1AE',124,'18','2023-03-02',4,1)
--insert into Tickets values('1AW',421,'18','2023-03-02',5,5)
--insert into Tickets values('1AQ',412,'18','2023-03-02',6,6)
--insert into Tickets values('1AY',1000,'18','2023-03-02',7,7)

