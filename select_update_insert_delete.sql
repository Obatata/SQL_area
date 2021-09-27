--#################################################################################
-- Insert in table 
--#################################################################################

Insert into Etudiant values
('Marchand', 'Elisabeth', 18),
('Truchon', 'Melanie', 16),
('Teslu', 'Sandrine', 17),
('Portail','Bruno', 23),
('Virenque', 'Michel', 22);

select*From Etudiant;


--#################################################################################
-- Select in table 
--#################################################################################

-- All contain of table Etudiant
select * FROM Etudiant ;

-- Select Etdudiant whose name is 'Teslu'
select * from Etudiant where nom = 'Teslu';



--#################################################################################
-- Update in table 
--#################################################################################
-- Changer l'age de teslu de  "17" à "18"
Update Etudiant set age = '18', nom = 'Teslu_2' where nom = 'Teslu';



--#################################################################################
-- delete in table 
--#################################################################################
delete from Etudiant where nom = 'virenque';