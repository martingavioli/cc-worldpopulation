-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

-- Largest population size for Gabon:

SELECT population, country
FROM population_years
WHERE country='Gabon'
ORDER BY population DESC;

-- 10 lowest population countries in 2005:

SELECT country, population, year
FROM population_years
WHERE year=2005
ORDER BY population ASC
LIMIT 10;

-- Countries with population > 100 M in 2010:

SELECT DISTINCT country, population, year
FROM population_years
WHERE population > 100
AND year = 2010
ORDER BY population DESC;

-- Countries with “Islands” in their name:

SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

-- Population in Indonesia 2000 vs 2010:

SELECT country, year, population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010
ORDER BY year DESC;
