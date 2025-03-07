USE FlightDB;
SELECT * FROM dbo.flights

SELECT * FROM dbo.airports


--Total flights

Select COUNT(Carrier) as Flights from dbo.flights

-- Total Airports
Select COUNT(airport_id) as Airports from dbo.airports

--Total Carrier types
Select COUNT(DISTINCT Carrier) as Carrier from dbo.flights

--Total Cities
Select COUNT(DISTINCT city) as Airports from dbo.airports

--Total States
Select COUNT(DISTINCT state) as Airports from dbo.airports


--Business Questions
--1)	Number of flights on each day of month
Select DayofMonth, COUNT(*) as Flights
from dbo.flights
group by DayofMonth

--2)	Number of flights on each day of week
Select DayOfWeek, Count(*) as Flights
from dbo.flights
group by DayOfWeek
order by DayOfWeek asc   

--3)	Arrival delay distribution
Select ArrDelay, Count(*) as Flights
from dbo.flights
group by ArrDelay
order by ArrDelay  

--4)	Departure Delay distribution
Select DepDelay, Count(*) as Flights
from dbo.flights
group by DepDelay
order by DepDelay 

--5)	Departure Status
Alter Table dbo.flights
add DepStatus varchar(10)

Update dbo.flights
Set DepStatus =
	Case
		when DepDelay<0 then 'Early'
		when DepDelay=0 then 'On-Time'
		else 'Late'
	end;
Select * from dbo.flights

--6)	Arrival Status
Alter Table dbo.flights
add ArrStatus varchar(10)

Update dbo.flights
Set ArrStatus =
	Case
		when ArrDelay<0 then 'Early'
		when ArrDelay=0 then 'On-Time'
		else 'Late'
	end;
Select * from dbo.flights

--7)	Origin Airport Distribution based on departure delay
Select OriginAirportID, Count(*) as Flights
from dbo.flights
group by OriginAirportID
order by Flights desc 

--8)	Destination Airport Distribution based on Arrival delay
Select DestAirportID, Count(*) as Flights
from dbo.flights
group by DestAirportID
order by Flights desc 

--9)	Delay Covered distribution
Alter Table dbo.flights
add DelayCovered varchar(10)

Update dbo.flights
Set DelayCovered =
	Case
        When DepDelay>0 AND (ArrDelay<0 OR ArrDelay=0) then 'True'
        else 'False'
	end;
Select * from dbo.flights

