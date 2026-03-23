

--1. Display all properties in the database.
select *
from [property24].[dbo].[property24_v1]

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
select city, province, property_price
from [property24].[dbo].[property24_v1]; 

--3. List all distinct provinces in the table.
select distinct province
from [property24].[dbo].[property24_v1]; 

--4. Find all properties located in Gauteng.
select *
from [property24].[dbo].[property24_v1]
where province = 'Gauteng';

--5. Show properties priced under R1,500,000.
select *
from [property24].[dbo].[property24_v1]
where property_price < 1500000;

--6. List properties with more than 3 bedrooms.
select *
from [property24].[dbo].[property24_v1]
where bedrooms > 3;

--7. Find properties with parking for at least 2 cars.
select *
from [property24].[dbo].[property24_v1]
where parking >= 2;

--8. Show properties where the monthly repayment is greater than R25,000.
select *
from [property24].[dbo].[property24_v1]
where monthly_repayment > 25000;

--9. Show all properties ordered by property price from highest to lowest.
select *
from [property24].[dbo].[property24_v1]
order by property_price desc;

--10. List properties ordered by floor size from smallest to largest.
select *
from [property24].[dbo].[property24_v1]
order by floor_size asc;

--11. Show Gauteng properties ordered by monthly repayment.
select *
from [property24].[dbo].[property24_v1]
where province = 'gauteng'
order by monthly_repayment;

--12. Find Western Cape properties priced below R3,000,000.
select *
from [property24].[dbo].[property24_v1]
where province = 'western cape' and property_price < 3000000;

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
select *
from [property24].[dbo].[property24_v1]
where province ='kwazulu-natal' and bedrooms >=3;

--14. Find properties in Limpopo or Free State ordered by property price.
select *
from [property24].[dbo].[property24_v1]
where province in ('limpopo','free state')
order by property_price desc;

--15. Show the 10 most expensive properties.
select top 10 *
from [property24].[dbo].[property24_v1]
order by property_price desc;

--16. Show the 5 cheapest properties.
select top 5 *
from [property24].[dbo].[property24_v1]
order by property_price asc;

--17. Show the top 10 properties with the largest floor size.
select top 10 *
from [property24].[dbo].[property24_v1]
order by floor_size desc;

--18. Which province appears to have the highest priced properties?
select province, AVG(cast(property_price as BIGINT)) as average_price
from [property24].[dbo].[property24_v1]
group by province
order by average_price desc;

--19. Which cities appear to have the most affordable housing?
select city, AVG(cast(property_price as BIGINT)) as average_price
from [property24].[dbo].[property24_v1]
group by city
order by average_price asc;

--20. What minimum income is typically required for properties priced above R4,000,000?
select avg(min_gross_monthly_income) as minimum_income_required
from [property24].[dbo].[property24_v1]
where property_price > 4000000;