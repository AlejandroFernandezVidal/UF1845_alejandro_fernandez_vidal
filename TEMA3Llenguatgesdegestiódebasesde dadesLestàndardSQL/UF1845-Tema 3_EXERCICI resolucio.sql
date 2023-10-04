# RESOLUCIÓ EXERCICI DE SÍNTESI TEMA 3
# TAULES ORIGEN
USE notes;
SELECT * FROM notes.persones;
SELECT * FROM notes.notes;

# Persones
# - Llista de persones ordenades per edat (de més gran a més jove)
	SELECT * FROM persones ORDER BY data_naixement ASC;
    
# - Llista de persones majors de 30 anys
	SELECT * FROM persones WHERE data_naixement<'1993-09-05';
    SELECT * FROM persones WHERE DATEDIFF(now(),data_naixement)>=365*30;
    SELECT * FROM persones WHERE DATE_SUB(now(),INTERVAL 30 YEAR)>=data_naixement;
    SELECT * FROM persones WHERE TIMESTAMPDIFF(YEAR,data_naixement,CURDATE())>=30; #Ésmenys precís
# - Nombre de persones majors de 50 anys
    SELECT COUNT(*) as num_majors_50 FROM persones WHERE DATEDIFF(now(),data_naixement)>=365*50;

# - Llista de noms únics
	SELECT DISTINCT nom FROM persones ORDER BY nom asc;
    SELECT nom FROM persones GROUP BY nom ORDER BY nom asc;

# Notes
# - Llista de persones que no han fet cap examen
	SELECT * FROM persones 
		LEFT JOIN notes ON notes.alumne_dni=persones.dni
        WHERE notes.id_examen IS NULL;
	
    SELECT * FROM persones
		WHERE dni NOT IN (SELECT DISTINCT alumne_dni FROM notes);
        
# - Llista de persones amb el nombre d’examens realitzats per cadascú
	SELECT dni,nom,cognoms,COUNT(id_examen) as num_examens FROM persones
		LEFT JOIN notes ON persones.dni=notes.alumne_dni
		GROUP BY dni;
    
    SELECT *,(SELECT COUNT(*) FROM notes WHERE alumne_dni=persones.dni) as num_examens
		FROM persones;

# - Afegir a l’anterior, la nota mitja dels examens realitzats per cadascú
	SELECT dni,nom,cognoms,COUNT(id_examen) as num_examens,ROUND(AVG(nota),2) as nota_mitja 
		FROM persones
		LEFT JOIN notes ON persones.dni=notes.alumne_dni
		GROUP BY dni;
    
    SELECT *,(SELECT COUNT(*) FROM notes WHERE alumne_dni=persones.dni) as num_examens
		,(SELECT ROUND(AVG(nota),2) FROM notes WHERE alumne_dni=persones.dni) as mitja_examens
		FROM persones;

# - TOP 10 persones amb nota d’examen més alta
	SELECT * FROM notes GROUP BY alumne_dni ORDER BY nota DESC LIMIT 10;
        
# - TOP 10 de persones amb nota d’examen més baixa
	SELECT * FROM notes GROUP BY alumne_dni ORDER BY nota ASC LIMIT 10;

	SELECT dni,nom,cognoms,nota FROM notes 
		LEFT JOIN persones ON persones.dni=notes.alumne_dni
		GROUP BY dni ORDER BY nota ASC LIMIT 10;

# - Nombre mig d’examens fets per persona
	SELECT COUNT(nota)/COUNT(DISTINCT dni) AS mig 
    FROM persones 
    LEFT JOIN notes ON notes.alumne_dni=persones.dni;
    
    SELECT (SELECT COUNT(*) FROM notes)/(SELECT COUNT(*) FROM persones) as promedio;