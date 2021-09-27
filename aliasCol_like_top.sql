
--#################################################################################
-- New table to continue the queries ! 
--#################################################################################
USE Formation
GO

create table Contact (Nom varchar (200),prenom varchar (200), age int, sexe char (1), date_de_naissance date)

insert into contact values 

('Marchand','Elisabeth',18,'F','04-08-1976'),
('Truchon','Melanie',16,'F','04-08-1978'),
('Teslu','Sandrine',17,'F','02-05-1987'),
('Portail','Bruno',23,'M','06-05-1970'),
('Virenque','Michel',22,'M','02-08-1983'),
('Dutruel','Pascal',22,'M','02-08-1983'),-- meme age que Virenque michel
('Virenque','Micheline',37,'M','02-08-1975'),
('Fournillet','Alain',22,'M','01-01-1983'),
('Faurnillet','Pascal',48,'M','12-06-1960'),
('Boutin','Ludivine',47,'F','22-01-1965'),
('Delors','Valerie',28,'M','24-09-1978'),
('Thuillier','olivier',41,'M','12-08-1976'),
('Chuillier','olivier',41,'M','12-08-1976'),
('Meilhac','Amelie',34,'F','08-05-1983'),
('Boutin','Ludivine',47,'F','22-01-1965')-- deux fois la meme valeur dans la table, c'est un doublon


--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################





--#################################################################################
-- Alias column area
--#################################################################################

-- Replace 'nom' column by 'TOTO'
select 
	nom as "ToTo",
	prenom, 
	age
FROM 
	Etudiant;



--#################################################################################
-- Like column area
--#################################################################################

-- Slelect all where age start with "3"
select * FROM Contact where age like '3%';

-- Select all where age finish with 8
select * FROM Contact where age like '%8';

-- Select all where nom contains "D"
select * FROM Contact where nom like '%D%';

-- Select all where "date de naissance" at "Januray"
select * FROM Contact where date_de_naissance like '%-01-%';

-- Select all where "nom" is "Thuillier" or "Chuillier" // start with T or C and the remaind is huillier
select * FROM Contact where nom like '[TC]huillier';

-- Select all where "nom" start with "M" and fichish wieh "D"
select * FROM Contact where nom like 'M%D';



--#################################################################################
-- Top area
--#################################################################################

-- Select first row from "Contact" table 
select top (1) * from Contact;

-- Select five first row from "Contact" table 
select top (5) * from Contact;