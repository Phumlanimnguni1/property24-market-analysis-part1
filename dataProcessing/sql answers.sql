

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
--12. Find Western Cape properties priced below R3,000,000.
--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
--14. Find properties in Limpopo or Free State ordered by property price.
--15. Show the 10 most expensive properties.
--16. Show the 5 cheapest properties.
--17. Show the top 10 properties with the largest floor size.
--18. Which province appears to have the highest priced properties?
--19. Which cities appear to have the most affordable housing?
--20. What minimum income is typically required for properties priced above R4,000,000?