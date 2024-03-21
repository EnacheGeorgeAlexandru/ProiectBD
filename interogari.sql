--Afisati elo-ul jucatorilor si tratati cazul in care nu exista o valoare pentru prenume
SELECT
  CASE
    WHEN J.Prenume IS NULL THEN J.Nume
    ELSE J.Nume || ' ' || J.Prenume
  END AS Nume_Jucator,
  CONCAT('Punctaj ELO: ', TO_CHAR(J.Elo)) AS Punctaj_ELO
FROM Jucator J;


--Afisati numele si data de incepere a turneelor in care a participat cel putin un jucator cu elo mai mare decati media
--tutror celorlalti jucatori

WITH MedieElo AS (
  SELECT AVG(Elo) AS MediaElo
  FROM Jucator
)
SELECT T.Nume, T.Data_Incepere
FROM Turneu T
WHERE EXISTS (
  SELECT *
  FROM Turneu_Jucator TJ
  INNER JOIN Jucator J ON TJ.ID_Jucator = J.ID_Jucator
  WHERE TJ.ID_Turneu = T.ID_Turneu
    AND J.Elo > (SELECT MediaElo FROM MedieElo)
);


--Afisati numele si elo-ul tuturor jucatorilo in ordinea descrescatoare a coeficientului elo
--si afisati nume necunoscut respectiv elo necunoscut daca nu exista valori pentru atribute
SELECT
  NVL(J.Nume, 'Nume necunoscut') AS Nume_Jucator,
  DECODE(J.Elo, NULL, 'elo necunoscut', J.Elo) AS Scor_Elo
FROM Jucator J
ORDER BY DECODE(J.Elo, NULL, 0, J.Elo) DESC;

--Afisati jucatorii care care au participat la cel putin doua turnee (precizand acest numar)
SELECT
  J.ID_Jucator,
  J.Nume,
  J.Prenume,
  COUNT(*) AS Numar_Turnee
FROM Jucator J
JOIN Turneu_Jucator TJ ON J.ID_Jucator = TJ.ID_Jucator
JOIN Turneu T ON TJ.ID_Turneu = T.ID_Turneu
GROUP BY J.ID_Jucator, J.Nume, J.Prenume
HAVING COUNT(DISTINCT T.ID_Turneu) >= 2
ORDER BY Numar_Turnee ASC;

--
SELECT T.Nume, T.Data_Incepere, T.Data_Final
FROM Turneu T
WHERE T.Data_Final = (
  SELECT MIN(Data_Final)
  FROM Turneu
  WHERE Data_Final >= SYSDATE
);
--Afisati cel mai recent turneu
SELECT T.Nume, T.Data_Incepere, T.Data_Final
FROM Turneu T
WHERE T.Data_Final = (
  SELECT MIN(Turneu.Data_Final)
  FROM Turneu
  WHERE Turneu.Data_Final >= SYSDATE
);



