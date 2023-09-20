/* 
09/20/2023

Median yearly asking rent by borough 
Data set from Street easy
full data set here: https://streeteasy.com/blog/data-dashboard/[object%20Object]?agg=Total&metric=Inventory&type=Sales&bedrooms=Any%20Bedrooms&property=Any%20Property%20Type&minDate=2010-01-01&maxDate=2023-08-01&area=NYC

cleaned data set to only show 1 bedroom median rent for each borough for each year 2010 - 2023

yearly median rent calculated by analyzing rent for each month each year 
 
*/
-- view entire data chart 
SELECT *
FROM SE1BRMEDRENT.borough;
-- --------------------- Manhattan -----------------------------------------
-- Percentage Increase = [(New Value - Old Value) / Old Value] * 100
-- how much has rent increased in Manhattan in the last 5 years: 2017 - 2022
select areaname, borough, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'Manhattan' and borough = 'Manhattan';

-- --------------------- Bronx -----------------------------------------
-- how much has rent increased in the Bronx in the last 5 years: 2017 - 2022:
select areaname, borough, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'Bronx' and borough = 'Bronx';

-- --------------------- Brooklyn -----------------------------------------
select areaname, borough, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'Brooklyn' and borough = 'Brooklyn';

-- --------------------- Queens -----------------------------------------
select areaname, borough, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'Queens' and borough = 'Queens';

-- -- --------------------- Staten Island -----------------------------------------
select areaname, borough, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'Staten Island' and borough = 'Staten Island';

-- -- --------------------- NYC -----------------------------------------
-- how much has rent increased in NYC as a whole in the past 5 years: (2017 - 2022)
select areaname, areatype, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areaname = 'NYC' and areatype = 'city';

-- comparing all 5 boroughs rent increase in the last 5 years (2017 - 2022):
select areaname, areatype, 2017yr, 2022yr, ((2022yr - 2017yr )/2017yr * 100) as percentage_increase
from SE1BRMEDRENT.borough
where areatype = 'borough'
order by percentage_increase ASC;

