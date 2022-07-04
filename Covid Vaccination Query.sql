

--Queries For Tableau Visualization
--Covid Vaccinations queries

-- 1.

SELECT location,population,max(convert(bigint,total_tests)) as Total_teats, max(convert(bigint, total_vaccinations)) as Total_vaccination
FROM CovidVaccinations WHERE continent is not null
GROUP BY location,population
ORDER BY 1,2,3


--2.

SELECT continent,location ,MAX(total_vaccinations/population)*100 as VaccinationPercentage
from CovidVaccinations where continent is not null
Group By continent, location
Order By 1,2,3



select * from CovidVaccinations

