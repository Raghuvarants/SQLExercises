/* 1 - Write a query to show population of Germany */

   SELECT population FROM world
   WHERE name = 'GERMANY'

/* 2 - Fetch the Name , Population of countries - Sweden ,Norway and Denmark from the table 'World' */

   SELECT name, population FROM world
   WHERE name IN ('Sweden', 'Norway', 'Denmark');

/* 3 - Show the countries with area between 200,000 and 250,000 */

   SELECT name, area FROM world
   WHERE area BETWEEN 200000 AND 250000

