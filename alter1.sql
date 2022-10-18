CREATE schema segreteria;

CREATE DOMAIN segreteria.votazione AS SMALLINT CHECK(value >= 18 and value <= 30 or value = 33);

CREATE TABLE segreteria.studenti (
	matricola CHAR(6) PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	cognome VARCHAR(20) NOT NULL,
	data_nascita DATE,
	anno_corso SMALLINT DEFAULT 1 CHECK(anno_corso > 0 and anno_corso < 4) ,
		UNIQUE (nome, cognome, data_nascita)
);

CREATE TABLE segreteria.docenti(
	cod_docente CHAR(6) PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	cognome VARCHAR(20) NOT NULL,
	indirizzo VARCHAR(50)
);

CREATE TABLE segreteria.corsi(
	cod_corso CHAR(3) PRIMARY KEY,
	nome VARCHAR(20),
	docente CHAR(6),
		FOREIGN KEY (docente) REFERENCES segreteria.docenti (cod_docente)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE segreteria.esami(
	studente CHAR(6),
	corso CHAR(3),
	data DATE NOT NULL,
	voto segreteria.votazione NOT NULL,
		FOREIGN KEY (studente) REFERENCES segreteria.studenti (matricola)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
		FOREIGN KEY (corso) REFERENCES segreteria.corsi (cod_corso)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);