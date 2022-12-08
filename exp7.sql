select country,count(customername)  from customers
group by country
having count(customername)>5;

select country , count(customername) from customers
group by country
order by (count(customername))desc;

select employees.firstname, count(orders.orderid) as numberoforders
from (orders
inner join employees on orders.employeeid =employees.employeeid)
group by employees.firstname
HAVING COUNT(orders.orderid) >= 2;







