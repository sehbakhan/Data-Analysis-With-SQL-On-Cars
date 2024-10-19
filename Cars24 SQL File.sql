create database cars;
use cars;

Select * from cars24;

select name, count(*) as total_sell
from cars24
group by name
order by total_sell desc
limit 5;

select fuel, AVG(selling_price) as avg_price
from cars24
group by fuel;

select transmission,AVG(mileage) as avg_mileage
FROM  cars24 
GROUP BY  transmission;

SELECT  year,  AVG(mileage) as  avg_mileage 
FROM   Cars24 
GROUP  BY  year 
ORDER  BY  year;

SELECT seats, MIN(selling_price) AS min_price, MAX(selling_price) AS max_price, AVG(selling_price) AS avg_price
FROM cars24
GROUP BY seats;

SELECT owner, COUNT(*) AS  total_listings 
FROM Cars24 
GROUP BY owner;

