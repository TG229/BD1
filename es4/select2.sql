SELECT STUDENTE.matricola, ESAMECORSO.nome
	FROM segreteria.studenti STUDENTE JOIN (
		SELECT * 
			FROM segreteria.esami ESAME JOIN segreteria.corsi CORSO
			ON ESAME.corso = CORSO.cod_corso
	) ESAMECORSO								
	ON(
		ESAMECORSO.nome = 'Basi di dati'
		AND STUDENTE.matricola = ESAMECORSO.studente
		AND ESAMECORSO.voto > 27);

SELECT DISTINCT STUDENTE.cognome, STUDENTE.nome
	FROM segreteria.studenti STUDENTE JOIN segreteria.esami ESAME
	ON (ESAME.data >= '01-01-2007' and ESAME.data <= '31-12-2007');
	
SELECT ESAME.*
	FROM segreteria.studenti STUDENTE JOIN segreteria.esami ESAME
	ON (
		STUDENTE.nome = 'Monti' AND STUDENTE.cognome = 'Mario'
		AND STUDENTE.matricola = ESAME.studente
	)
	ORDER BY ESAME.voto DESC, ESAME.data;
	
SELECT DISTINCT STUDENTE1.matricola, STUDENTE2.matricola
	FROM segreteria.studenti STUDENTE1 INNER JOIN segreteria.studenti STUDENTE2
	ON(STUDENTE1.nome = STUDENTE2.nome AND STUDENTE1.cognome = STUDENTE2.cognome
	  AND STUDENTE1.matricola <> STUDENTE2.matricola);
	  
SELECT DISTINCT STUDENTE.*, ESAME.corso, ESAME.voto
	FROM segreteria.studenti STUDENTE LEFT JOIN segreteria.esami ESAME
	ON (STUDENTE.matricola = ESAME.studente)
	WHERE (STUDENTE.anno_corso = 1);
	
SELECT DISTINCT *
	FROM segreteria.docenti DOCENTE LEFT JOIN segreteria.corsi CORSO
	ON (DOCENTE.cod_docente = CORSO.cod_corso);
