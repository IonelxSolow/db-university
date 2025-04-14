/*
21 GROUP BY 
è un'agregato di righe
HAVING alias = N;

SELECT colonna, count(elemento_da_contare) AS alias
FROM tabella AS x
LEFT JOIN tabella2 AS y
ON tabella1.colonna = tabella2.colonna
GROUP BY tabella1.colonna;
*/

/*
SELECT x.nome_ufficio
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio;
-- doppioni aggregati in colonna
*/

/*
SELECT x.nome_ufficio
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUP BY x.nome_ufficio;
-- vengono acorpati, raggrupati insieme le voci ridondanti/doppioni
*/

/*
SELECT x.nome_ufficio, count(y.id_dipendente) AS totale_dipendenti -- crea una nuova collona e mi count quante righe aveva prima di accorpare
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUP BY x.nome_ufficio;
*/

SELECT x.nome_ufficio, count(y.id_dipendente) AS totale_dipendenti 
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUP BY x.nome_ufficio
HAVING totale_dipendenti = 2; -- HAVING ci restituisce solo i risultati che hanno 2 agregati