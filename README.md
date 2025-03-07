# Flights-and-Airports-Analytics--Power-BI
Flights and Airports Dashboard - Power BI and SQL
This  project contains a Power BI dashboard for analyzing flights and airport data, utilizing KPI cards, various visualizations to extract key insights. Data Analysis is also done in SQL> 

📌 Features
1. KPI Cards – Track essential flight statistics such as total flights, delays, and cancellations.
2. Interactive Visuals – Various charts for trend analysis, performance monitoring, and comparisons.
3. Conditional column – Conditional statement for delay identification for advanced data insights.
4. Data-Driven Decision Making – Identify flight patterns, airport performance, and delays.

## Analyis using SQL

Steps to Import Data from Excel to SQL Server Management Studio (SSMS):
1.	Open SQL Server Management Studio (SSMS) and connect to your database.
2.	Create a new database named as “FlightDB” 
3.	Navigate to Tasks > Import Data in Object Explorer.
4.	Select Microsoft Excel as the data source and browse for your Excel file. Click the 'Browse' button to select the path to the Excel file you want to import. Choose the correct Excel version and click Next. Tick the 'First Row has headers' checkbox if your Excel file contains headers. Click Next.
5.	On the 'Choose a Destination' screen, select destination database: Select Server name as "Microsoft Excel OLE DB Provider for SQL Server".
6.	On the 'Specify Table Copy or Query' window: For simplicity just select 'Copy data from one or more tables or views', click Next.
7.	Complete the import process and verify the data using 
USE FlightDB;
SELECT * FROM dbo.flights


## Dataset:
Link: https://www.kaggle.com/datasets/tylerx/flights-and-airports-data

Two files are used in this project namely airports.csv and flights.csv.

📊 Dataset Overview

The project utilizes two datasets:

1️⃣ Flights Data 
Contains flight-related information with the following columns:
1.	DayOfMonth – Day of the month when the flight took place
2.	DayOfWeek – Numeric representation of the weekday (1 = Monday, 7 = Sunday)
3.	OriginAirportID – Airport ID of the departure location
4.	DestAirportID – Airport ID of the arrival location
5.	Departure Delay – Delay in departure (in minutes)
6.	Arrival Delay – Delay in arrival (in minutes)
7.	Carrier – Airline carrier operating the flight

2️⃣ Airports Data 
Contains details of airports, including:
1.	Airport ID – Unique identifier for each airport
2.	Name – Airport name
3.	State – State where the airport is located
4.	City – City where the airport is located

## Analysis using Power BI 
Dashboard Overview 
1. Flight Performance Metrics ✈️ – Total flights, total airports, on-time flights , delays, and delay-covered flights,Flights by day of month, flights by day of week.
2. Airport Analysis 🏢 – Airport performance.
3. Time-Based Trends 📅 – Early, on-time and late flight patterns.
4. Delay Analysis ⏳ – Departure vs. arrival delays across different airports.

Tech Stack
1. Power BI for data visualization
2.	DAX (for measures)
3.	Excel/CSV Data Sources

## Dashboard
Page 1
![Page 1](https://github.com/user-attachments/assets/0cf1c51f-bb65-45cd-b15a-74f1a167e05e)

Page 2 
![image](https://github.com/user-attachments/assets/7ca0a4f3-85ee-477c-8162-5bc54d745de0)






