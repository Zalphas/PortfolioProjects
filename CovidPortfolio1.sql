select*
From PortfolioProject..CovidDeaths
Order by 1,2

select*
From PortfolioProject..CovidVaccinations
Order by 1,2

select Location, Date, total_cases, new_cases, total_deaths, population
From PortfolioProject..CovidDeaths
Order by 1,2

-- looking at total cases/total deaths

select Location, Date, total_cases, new_cases, total_deaths, population, (total_deaths/total_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
Where location like '%algeria%'
Order by 1,2

--looking at total deaths vs population
select Location, Date, total_cases, new_cases, total_deaths, population, (total_deaths/population)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Order by 1,2

--looking at total cases vs population
select Location, Date, total_cases, new_cases, total_deaths, population, (total_cases/population)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Order by 1,2

--looking at countries with highest infection rate compared to population
Select Location, Population, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/population))*100 as MaxDeathPercentage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
Order by 4 desc
