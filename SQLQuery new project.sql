SELECT cod.continent, cod.location,cod.date,cod.population,cov.new_vaccinations
,SUM(CAST(cov.new_vaccinations AS int)) OVER (PARTITION BY cod.location)
FROM CovidDeaths as cod
JOIN CovidVaccine as  cov
  ON cod.location=cov.location
  and cod.date = cov.date
  where cod.continent is not null
order by 1,2,3



SELECT continent,location,population,MAX(total_cases) AS HIGHESTINFECTED,MAX(CAST((CAST(total_deaths AS int))/(population) AS DECIMAL(10,5))*100) PopulationDeaths
FROM CovidDeaths
WHERE continent IS NOT NULL
GROUP BY continent,population,location
ORDER BY HIGHESTINFECTED DESC


select continent,date,location,new_vaccinations, SUM(CAST(new_vaccinations AS int)) OVER (PARTITION BY location)
from CovidVaccine
where continent is not null

SELECT location,population,MAX(total_deaths) AS HIGHESTDEATHS,MAX(CAST((CAST(total_deaths AS int))/(population) AS DECIMAL(10,5))*100) PopulationDeaths
FROM CovidDeaths
GROUP BY location,population
order by 1,2

SELECT location,COUNT( total_deaths) AS TOTALdeaths
FROM CovidDeaths
where location is not null
GROUP BY location
ORDER BY TOTALdeaths desc