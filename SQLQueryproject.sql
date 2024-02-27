SELECT *
FROM CovidDeaths

SELECT *
FROM CovidVaccine
where 
order by 3,4

SELECT  location,date,total_cases,total_deaths, (total_deaths/total_cases)
FROM CovidDeaths
where location like 'china'