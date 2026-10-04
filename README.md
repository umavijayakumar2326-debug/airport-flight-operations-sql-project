# Airport Flight Operations & Delay Management System

## Project Overview

This project is a SQL-based Airport Flight Operations and Delay Management System developed to analyze flight schedules, flight operations, delays, and passenger booking information.

The project uses SQL queries to extract meaningful insights from airport operational data and demonstrate practical SQL concepts used in data analysis.

## Objectives

* Analyze flight operations and schedules
* Identify and analyze flight delays
* Compare flights and airlines
* Analyze passenger booking information
* Generate useful operational insights using SQL

## Database Tables

The project contains three main tables:

* **flights** – Flight number, airline, source, destination, and aircraft details
* **flight_operations** – Flight date, scheduled/actual timings, delay minutes, and status
* **passengers** – Passenger details, seat class, and booking status

## SQL Concepts Used

* SELECT and WHERE
* DISTINCT
* ORDER BY
* GROUP BY and HAVING
* Aggregate Functions
* INNER JOIN
* LEFT JOIN
* Subqueries
* CASE
* CTE (Common Table Expression)
* EXISTS and NOT EXISTS
* RANK()
* DENSE_RANK()
* LAG()
* UNION and UNION ALL
* CREATE VIEW
* GROUP_CONCAT()
* LIMIT

## Key Analysis

The project includes analysis such as:

* Flights with significant delays
* Maximum and average flight delays
* Airline-wise flight counts
* Destination-wise flight analysis
* Flights with passenger bookings
* Flights without passenger records
* Flight delay ranking
* Top 5 most delayed flight operations
* Passenger count for each flight
* Combined flight, operation, and passenger information

## Real-Time Business Use

The analysis can help airport operations teams monitor flight delays, understand passenger loads, compare airline operations, and identify flights that require operational attention.

## Tools Used

* MySQL
* MySQL Workbench
* SQL

## Project File

The complete SQL script containing the database creation, tables, data, and analysis queries is available in:

`Airport_Flight_Operations.sql`
