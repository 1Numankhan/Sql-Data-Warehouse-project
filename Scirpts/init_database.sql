/*  Create Database and schema 
=========================================

Script Purpose: 
			This scirpt create new database named 'DataWarehouse' after checking if it already exists
			If the database exists, it is dropped and recreated. Additionally, the script sets up three schema 
			within the database: 'Bronze', 'Silver', 'gold'






*/






Use master;


-- Before creating any database, we have to check

Go 
If EXISTS(SELECT 1 From sys.databases where name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
	Go


-- Create Database 
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- creating a scheme to organize data
-- schema is just like a container

-- create Bronze layer schema 

CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;


