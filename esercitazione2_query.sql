SELECT IMM.codiceI, IMM.indirizzo, IMM.tipo, IMM.zona
	FROM immobili.immobile IMM join immobili.vendita VEN on VEN.codI = IMM.codiceI
	join immobili.agente AGN on VEN.codA = AGN.codiceA
	WHERE VEN.data_vendita < '01-01-2005' AND VEN.prezzo < IMM.prezzo_richiesto;
	
SELECT IMM.indirizzo, IMM.prezzo_richiesto, VIS.data_visita
	FROM immobili.immobile IMM join immobili.visita VIS on VIS.codI = IMM.codiceI
	join immobili.agente AGN on VIS.codA = AGN.codiceA
	WHERE AGN.agenzia = 'CambiaCasa'
	ORDER BY  VIS.data_visita DESC;

SELECT AGN.agenzia
	FROM immobili.visita VIS join immobili.agente AGN on VIS.codA = AGN.codiceA
	WHERE VIS.data_visita > '01-01-2004'
	GROUP BY AGN.agenzia
	HAVING COUNT(*)> 3;

SELECT AGN.*
	FROM immobili.visita VIS join immobili.agente AGN on VIS.codA = AGN.codiceA
	join immobili.vendita VEN on AGN.codiceA = VEN.codA
	WHERE VEN.data_vendita <= '01-01-2005' AND VIS.data_visita > '01-01-2003'
	GROUP BY AGN.codiceA
	HAVING COUNT(VEN.*) > 2;

CREATE VIEW immobili.immobile_venduto AS (
	SELECT IMM.* FROM immobili.immobile IMM JOIN immobili.vendita VEN on IMM.codiceI = VEN.codI
);

SELECT IMM.codiceI, COUNT(VES.codI)
	FROM immobili.immobile IMM full join immobili.visita VES on VES.codI = IMM.codiceI
	WHERE IMM.codiceI <> ALL(SELECT IMM.codiceI from immobili.immobile_venduto IMM)
	GROUP BY IMM.codiceI;