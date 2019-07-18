CREATE VIEW V_Animal_details
AS SELECT Animal.id, Animal.sexe, Animal.date_naissance, Animal.nom, Animal.commentaires, 
       Animal.espece_id, Animal.race_id, Animal.mere_id, Animal.pere_id, Animal.disponible,
       Espece.nom_courant AS espece_nom, Race.nom AS race_nom
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
LEFT JOIN Race ON Animal.race_id = Race.id;