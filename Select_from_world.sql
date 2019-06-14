   /* 1.Show name , continent and population of all countries  */

   	  SELECT name, continent, population
      FROM world
   
   /* 2.Show name of countries with population of atleast 200 Million */

   	  SELECT name FROM world
      WHERE population >= 200000000
   
   /* 3.Show name, per capita gdp for countries with population of atleast 200 Million */
 
   	  SELECT name,  gdp/population per_capita_gdp
      FROM world
      WHERE population >= 200000000
   
   /* 4.Show the (name) and (population) in millions for the countries of 'South America' 
      Divide the population by 1000000 to get population in millions. */

      SELECT name country, population/1000000 pop_millions
      FROM world
      WHERE continent = 'South America'

   /* 5.Show the name and population for France, Germany, Italy */
   
      SELECT name , population 
	  FROM world
	  WHERE name IN ('France' , 'Germany' , 'Italy')
	  
   /* 6.Show the countries which have a name that includes the word 'United' */
   
      SELECT name
	  FROM world
	  WHERE name like '%united%'

   
   
   
   