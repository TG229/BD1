-- se avete gi� popolato le tabelle e volete eliminarne il contenuto
delete from segreteria.esami;
delete from segreteria.corsi;
delete from segreteria.docenti;
delete from segreteria.studenti;

-- comandi per popolare le tabelle
insert into segreteria.studenti values ('424200', 'Perra', 'Ignazio', '1986-10-15', 1);
insert into segreteria.studenti values ('451100', 'Verdi', 'Carlo', '1986-10-10', 1);
insert into segreteria.studenti values ('395500', 'Rossi', 'Lucia', '1982-05-06', 3);
insert into segreteria.studenti values ('438984', 'Bianchi', 'Rosa', '1985-04-01', 2);
insert into segreteria.docenti values ('100100', 'Neri', 'Paolo', 'Via Roma 240, Cagliari');
insert into segreteria.docenti values ('100245', 'Bruni', 'Valeria', 'Via Mazzini 10, Roma');
insert into segreteria.docenti values ('100476', 'Rossi', 'Francesco', 'Via Garibaldi 5, Roma');
insert into segreteria.corsi values ('C02', 'Algebra', '100100');
insert into segreteria.corsi values ('C04', 'Geometria', '100100');
insert into segreteria.corsi values ('C06', 'Programmazione', '100245');
insert into segreteria.esami values ('424200', 'C02', '2003-06-06', 24);
insert into segreteria.esami values ('424200', 'C04', '2003-09-12', 27);
insert into segreteria.esami values ('395500', 'C06', '2004-01-20', 21);
insert into segreteria.esami values ('438984', 'C06', '2005-09-15', 30);
insert into segreteria.studenti values ('424210', 'Monti','Mario', '1983-01-07', 2);
insert into segreteria.studenti values ('451110', 'Montisci', 'Carla', '1989-10-10', 1);
insert into segreteria.docenti values ('100101', 'Riboni', 'Daniele');
insert into segreteria.corsi values ('C03', 'Basi di dati', '100100');
insert into segreteria.esami values ('424210', 'C03', '2007-06-06', 28);
insert into segreteria.esami values ('424210', 'C02', '2007-06-06', 20);
insert into segreteria.esami values ('424210', 'C04', '2006-09-12', 33);
insert into segreteria.esami values ('451110', 'C04', '2007-01-20', 19);
insert into segreteria.esami values ('451110', 'C06', '2005-09-15', 28);
insert into segreteria.studenti values ('070840', 'Secchi', 'Francesco', '1991-8-18', 3);
insert into segreteria.studenti values ('070850', 'Secchi', 'Francesco', '1992-6-10', 3);
insert into segreteria.studenti values ('438990', 'Bianchi','Rosa', '1994-01-02', 2);
insert into segreteria.studenti values ('451220', 'Montisci', 'Carla', '1992-4-10', 3);
insert into segreteria.docenti values ('100666', 'Pinna', 'Giovanni Michele');
insert into segreteria.corsi values ('C05', 'Lip', '100666');
insert into segreteria.esami values ('070840', 'C04', '2007-01-20', 27);
insert into segreteria.esami values ('070850', 'C04', '2007-01-20', 33);
insert into segreteria.esami values ('424200', 'C03', '2007-07-06', 28);
insert into segreteria.esami values ('424200', 'C05', '2007-06-06', 26);
insert into segreteria.esami values ('451220', 'C04', '2007-01-20', 25);
