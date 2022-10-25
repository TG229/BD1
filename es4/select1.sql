SELECT * FROM segreteria.esami 
	WHERE voto NOT BETWEEN 21 AND 27;
	
SELECT cod_docente, cognome FROM segreteria.docenti 
	WHERE indirizzo IS NOT NULL;
	
SELECT matricola FROM segreteria.studenti
	WHERE nome LIKE 'M%i' OR nome LIKE 'N%i';
	
SELECT matricola FROM segreteria.studenti, segreteria.esami
	WHERE matricola = studente 
	AND DATA BETWEEN '01-01-2006' AND '31-12-2007'
	AND (voto = 30 OR voto = 33);
	
SELECT DISTINCT nome, cognome FROM segreteria.studenti
	WHERE data_nascita < '01-01-1984';
	
SELECT * FROM segreteria.studenti
	WHERE anno_corso IN (1, 2)
	ORDER BY data_nascita, cognome, nome;
