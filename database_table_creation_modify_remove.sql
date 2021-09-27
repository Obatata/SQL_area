
--#################################################################################
-- Databse area
--#################################################################################

-- we want to create database "Formation"
CREATE DATABASE Formation;

-- Let's to modify the database name from "Formation" to "Formation_2"
ALTER DATABASE Formation modify name = Formation_2;

-- Remoeve database "Formation_2"
DROP DATABASE Formation_2;

-- return to initial state by creating table "Fromation" at the top of the file 
-- CREATE DATABASE Formation;


--#################################################################################
-- Tables area
--#################################################################################

-- Create table "Etudiant" with columns "(nom, Prenom, age)" with type (varchar, varchar, int) in database "Formation"
use Formation
CREATE TABLE Etudiant (nom varchar(200), prenom varchar(10), age int);

-- rename "simple_table" to "simple_table2"
sp_rename 'simple_table', 'simple_table_2';

-- Drope table "simple_table2"
drop table simple_table_2;
