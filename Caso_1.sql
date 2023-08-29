SELECT *
FROM h1n1;

DELETE FROM h1n1 WHERE Country = 'Grand Total';

--¿Cuál fue el país con mayor número de muertes?--
SELECT Country, MAX(Deaths) AS MaxDeaths
FROM h1n1
GROUP BY Country
ORDER BY MaxDeaths DESC;

--¿Cuál fue el país con menor número de muertes?--
SELECT Country, MAX(Deaths) AS MaxDeaths
FROM h1n1
GROUP BY Country
ORDER BY MaxDeaths ASC;
--¿Cuál fue el país con el mayor número de casos?--
SELECT Country, MAX(Cases) AS MaxCases
FROM h1n1
GROUP BY Country
ORDER BY MaxCases DESC;
--¿Cuál fue el país con el menor número de casos?--
SELECT Country, MIN(Cases) AS MinCases
FROM h1n1
GROUP BY Country
ORDER BY MinCases ASC;
--¿Cuál fue el número de muertes promedio?--
SELECT AVG(Deaths) AS AverageDeaths
FROM h1n1;
--¿Cuál fue el número de casos promedio?--
SELECT AVG(Cases) AS AverageCases
FROM h1n1;
--Top 5 de países con más muertes.--
SELECT Country, SUM(Deaths) AS TotalDeaths
FROM h1n1
GROUP BY Country
ORDER BY TotalDeaths DESC
LIMIT 5;
--Top 5 de países con menos muertes.--
SELECT Country, SUM(Deaths) AS TotalDeaths
FROM h1n1
GROUP BY Country
ORDER BY TotalDeaths ASC
LIMIT 5;