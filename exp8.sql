create table Items(
itemid int,
Itemname varchar(20),
category varchar(20),
Price int,
Instock int,
primary key(itemid)
);

drop table Items;
create table Customers(
custid int,
Custname varchar(20),
Address varchar(20),
state varchar(20),
primary key(custid)
);

create table Ord(
orderid int,
Itemid int,
Custid int,
Quantity int,
Orderdate varchar(20),
primary key(orderid),
foreign key(Itemid) references Items(itemid),
foreign key(Custid) references Customers(custid)
);

create table Delivery(
deliveryid int,
Custid int,
Orderid int,
primary key(deliveryid),
foreign key(Custid) references Customers(custid),
foreign key(Orderid) references Ord(orderid)
);

select c.custid,c.Custname from Customers c
join Ord o on c.custid=o.custid;

select c.Custname
from Customers c
join Ord o
on o.custid=c.custid
minus
(select c.Custname
from Customers c
join Ord o
on c.custid=o.custid
join Delivery d
on d.custid=o.custid
);

select I.itemname,I.PRICE from ITEMS I join ORD O on O.ITEMID=I.ITEMID join CUSTOMERS C on C.CUSTID = O.CUSTID where C.CUSTNAME='mickey';

select C.CUSTID,C.CUSTNAME from CUSTOMERS C join ORD O on C.CUSTID=O.CUSTID join DELIVERY D on D.ORDERID=O.ORDERID where O.ORDERDATE>'01-02-2013'and D.CUSTID != C.CUSTID;

SELECT itemid FROM ord
union
SELECT o.itemid
FROM ord o
left join DELIVERY D
on D.CUSTID =O.CUSTID
WHERE d.deliveryid IS NULL;


SELECT CUSTOMERS.custname
FROM customers
inner join DELIVERY
ON DELIVERY.CUSTID=CUSTOMERS.CUSTID;


select C.CUSTNAME
from CUSTOMERS C
join ORD O
ON C.CUSTID=O.CUSTID
minus
(select C.CUSTNAME
from CUSTOMERS C
join ORD O
ON C.CUSTID=O.CUSTID
join DELIVERY
on DELIVERY.CUSTID=O.CUSTID
);

select CUSTOMERS.CUSTNAME
from CUSTOMERS
inner join ORD
on ORD.CUSTID =CUSTOMERS.CUSTID
WHERE ORD.QUANTITY=
(select max(ORD.QUANTITY) from ORD
);

SELECT *
FROM CUSTOMERS
inner join ORD
ON ORD.CUSTID=CUSTOMERS.CUSTID
join ITEMS
on ITEMS.ITEMID =ORD.ITEMID
WHERE ITEMS.PRICE >5000;

SELECT custname,address FROM customers
minus
SELECT custname,
address
FROM customers c
join ORD O
ON c.custid=o.custid
join ITEMS I
on I.ITEMID=O.ITEMID
WHERE i.itemname LIKE 'samsung galaxy s4';

SELECT *
FROM customers c
left outer join ORD O
on C.CUSTID = O.CUSTID;

SELECT * FROM customers c RIGHT OUTER JOIN ord o ON c.custid = o.custid;

SELECT * FROM CUSTOMERS ORDER BY STATE;

select *
FROM ITEMS
WHERE PRICE > (SELECT AVG(PRICE)FROM ITEMS
)
ORDER BY category;



