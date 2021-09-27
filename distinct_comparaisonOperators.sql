
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
('Boutin','Ludivine',47,'F','22-01-1965')-- deux fois la meme valeur dans la table, c'est un doublo

--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################

-- Display all  without duplicates
select distinct * from Contact;


-- Copy and pas the value of "nom" "virenque" dans from the table "Contact" to the table "Contact_2"
select * into contact_2 from contact where nom = 'Virenque'
select * FROM contact_2;

-- 4 ways to find the row whose "sexe" is "M" with compariason operators 
select * from Contact where sexe <> 'F';
select * from Contact where sexe != 'F';
select * from Contact where sexe <> ('F');
select * from Contact where sexe not in  ('F');
select * from Contact where sexe = 'M';
select * from Contact where sexe IN ('M');

-- Select all row whose "age" between 46 and 48
select * from Contact where age between 46 and 48;

-- Select all rows where year of 'date_de_naissance' is diffrent from 1976
select * from Contact where year(date_de_naissance) != 1976;

-- Select all rows where month of 'date_de_naissance' is diffrent from August (08)
select * from Contact where month(date_de_naissance) != 08;