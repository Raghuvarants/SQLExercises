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

   /* 7.Show the countries that are big by area or big by population. Show name, population and area.*/
   
      SELECT name, population, area
	  FROM world
	  WHERE area > 3000000
	  OR population > 250000000
	  
   /* 8.Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area.
	  
	  -- Australia has a big area but a small population, it should be included.
      -- Indonesia has a big population but a small area, it should be included.
	  -- China has a big population and big area, it should be excluded.
	  -- United Kingdom has a small population and a small area, it should be excluded.
	  
	  SELECT name, population,area
  	  FROM world
  	  WHERE
  	  (population>250000000 OR area>3000000)
  	  AND NOT(population>250000000 AND area>3000000)
   
   /* 9.For South America show population in millions and GDP in billions both to 2 decimal places.
   
      SELECT name, ROUND(population/1000000,2),
             ROUND(gdp/1000000000,2)
  	  FROM world
 	  WHERE continent='South America'
 	  
   /* 10.Show per-capita GDP for the trillion dollar countries to the nearest $1000.
    
      SELECT name, ROUND(gdp/population,-3)
  	  FROM world
      WHERE
      gdp>1000000000000

   
   	  
   
   