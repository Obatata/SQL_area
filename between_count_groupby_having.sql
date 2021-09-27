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

select*FROM Contact;

--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################
--#######################################################################################################################################################################

--#################################################################################
-- between area
--#################################################################################

-- Select rows whose "age" is not between 20 and 40 
select * from Contact where age not between 20 and 40;


--#################################################################################
-- Count and having area
--#################################################################################

-- Count number of poeple whose "age" between 18 and 40 and "sexe" is "M" and total number is greather than 1  

select count(*), age, sexe from Contact
where age between 18 and 40 and sexe = 'M'
group by age, sexe
having count(*) > 1;

-- Count number of peopel whose "name" is "Olivier"
select count(*), prenom
from Contact
where prenom = 'Olivier'
group by prenom


-- Sum of peopel whose year "date_de_naissance" is 1983
select sum(1) from Contact where year(date_de_naissance) = 1983;

-- Count number of peopel whose "age" between 20 and 45, and number of peopel > 1 and by ording "age"  "descending"
select count(*) as num_tot, age from Contact 
where age between 20 and 45 
group by age
having count(*) > 1
order by age desc
