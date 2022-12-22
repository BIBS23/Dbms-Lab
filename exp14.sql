set serveroutput on;
DECLARE
num number;
factorial number;
FUNCTION calculateFact(x number)
RETURN number
IS
f number;
BEGIN
IF x = 0 THEN
f := 1;
ELSE
f := x * calculateFact(x-1);
END IF;
RETURN f;
END;
BEGIN
dbms_output.put_line('Enter num:');
num:= &num;
factorial := calculateFact(num);
DBMS_OUTPUT.PUT_LINE(' Factorial '|| num || ' is ' || factorial);
END;

--------------------------------------------------------------------------------


Create table student_details (roll int, marks int, phone int);
insert into student_details values (1,60,8590113535);
insert into student_details values (2,65,8590213535);
insert into student_details values (3,55,8593113535);
insert into student_details values (4,45,9590113535);
select * from student_details;



create procedure prl1 as
begin
update student_details
set marks= marks+marks*0.05;
end;



CREATE TABLE students1(id int,name varchar(10),m1 int,m2 int,m3 int,total int,grade varchar(1));



declare
id varchar(20);
name varchar(20);
m1 int;
m2 int;
m3 int;
total int;
begin
id:=:id;
name:=:name;
m1:=:m1;
m2:=:m2;
m3:=:m3;
total:=m1+m2+m3;
insert into students1(id,name,m1,m2,m3,total)
values(id,name,m1,m2,m3,total); 
end;

select * from students1;
delete from students1 where id=1;

create or replace function f1
return varchar as
cursor c is select total from students;
t int;
a int;
begin
open c;
loop
fetch c into t;
exit when c%notfound;
a:=t/3;
if(a>=90) then return('A+');
elsif(a>=80) then return('A');
elsif(a>=70) then return('B');
elsif(a>=60) then return('C');
else
return('D');
end if;
end loop;
close c;
end;


create or replace procedure p1
as
c varchar(30);
begin
c:=f1();
update students
set grade=c;
end;





begin
p1;
end;

create table customer_details(cust_id int,cust_name varchar(30),address varchar(30));
create table emp_details(empid int,empname varchar(30),salary int);
create table cust_count(count_row int);





create trigger trigge
after insert on customer_details
for each row
begin
dbms_output.put_line('A row is inserted');
end;

create trigger trig
after insert
on emp_details
for each row
when(new.salary>20000)
begin
dbms_output.put_line('Salary is greater than 20000')
end;


i
select * from cust_count;


select * from customer_details;


delete from customer_details where cust_id=8;


select * from cust_count;

create table deleted(empid int,empname varchar(30),salary int);

create table updatd(empid int,empname varchar(30),salary int);

create or replace trigger trige
before delete or update on emp_details
for each row
begin
if deleting then
insert into deleted
values(:old.empid,:old.empname,:old.salary);
else
insert into updatd
values(:new.empid,:new.empname,:new.salary);
end if;
end;

delete from emp_details where empid=21;
select * from deleted

update emp_details
set salary=10000 where empid=1;
select * from updatd


 


