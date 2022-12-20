CREATE SCHEMA immobili;

CREATE TABLE immobili.immobile (
	codiceI CHAR(3) PRIMARY KEY,
	indirizzo VARCHAR(50) NOT NULL,
	tipo VARCHAR(20) NOT NULL CHECK(
		tipo = 'appartamento' or
		tipo = 'villetta' or
		tipo = 'magazzino'
	),
	zona VARCHAR(20) NOT NULL CHECK(
		zona = 'residenziale' or
		zona = 'centro' or
		zona = 'periferia'
	),
	prezzo_richiesto DECIMAL(15, 2) NOT NULL
);

CREATE TABLE immobili.agente(
	codiceA CHAR(3) PRIMARY KEY,
	cognome VARCHAR(20),
	nome VARCHAR(20),
	agenzia VARCHAR(20) NOT NULL
);

CREATE TABLE immobili.visita(
	codI CHAR(3),
	codA CHAR(3),
	data_visita DATE, 
	FOREIGN KEY (codI) REFERENCES immobili.immobile
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (codA) REFERENCES immobili.agente
	ON DELETE RESTRICT
	ON UPDATE CASCADE,
	PRIMARY KEY (codI, codA, data_visita)
);

CREATE TABLE immobili.vendita(
	codI CHAR(3) PRIMARY KEY,
	codA CHAR(3) NOT NULL,
	data_vendita DATE,
	prezzo DECIMAL(15, 2),
	FOREIGN KEY (codI) REFERENCES immobili.immobile
	ON DELETE RESTRICT
	ON UPDATE CASCADE,
	FOREIGN KEY (codA) REFERENCES immobili.agente
	ON DELETE RESTRICT
	ON UPDATE CASCADE
);