SELECT PROD.*, INV.prezzo
	FROM prodotti.prodotto PROD  JOIN prodotti.inventario INV 
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE MAG.codM = 'M11'
			ORDER BY PROD.categoria, INV.prezzo DESC;
			
SELECT MAG.codM, MAG.indirizzo
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE MAG.citta = 'Milano'
			AND PROD.categoria = 'elettrodomestici'
			AND INV.quantita >= 20;
			
SELECT MAG.indirizzo, MAG.citta
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE PROD.nome = 'spaghetti';
			
SELECT PROD.codP, PROD.nome
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE MAG.indirizzo = 'Via Giove 14'
			AND INV.prezzo < 50.0;
			
SELECT PROD.codP, PROD.nome, INV.quantita
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE MAG.codM LIKE 'M0%'
			ORDER BY INV.prezzo;
			
SELECT DISTINCT MAG1.codM, MAG2.codM
	FROM  prodotti.inventario INV1 join prodotti.magazzino MAG1
	ON INV1.magazzino = MAG1.codM
		JOIN prodotti.inventario INV2
		ON INV1.prodotto = INV2.prodotto
			JOIN prodotti.magazzino MAG2
			ON MAG2.codM = INV2.magazzino
				JOIN prodotti.prodotto PROD
				on INV1.prodotto = PROD.codP
				WHERE PROD.categoria <> 'alimentari'
				AND MAG2.codM <> MAG1.codM;
				
SELECT DISTINCT MAG.*
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE (PROD.nome = 'biscotti' 
				   OR PROD.nome = 'forno' 
				   OR PROD.nome = 'frigo')
			AND INV.quantita > 20;

SELECT DISTINCT MAG.codM, PROD.categoria
	FROM prodotti.prodotto PROD join prodotti.inventario INV
	on PROD.codP = INV.prodotto
		JOIN prodotti.magazzino MAG
		on INV.magazzino = MAG.codM
			WHERE (INV.prezzo >= 50 AND INV.prezzo <= 500)
			ORDER BY PROD.categoria, MAG.codM DESC; 