create table student(
name varchar(15),
physics float(5),
chemistry float(5),
mathematics float(5),
grade varchar(6)
);
insert into student(name,physics,chemistry,mathematics)
values('bibin',20,19,40);
insert into student(name,physics,chemistry,mathematics)
values('christy',22,25,45);
insert into student(name,physics,chemistry,mathematics)
values('albin',22,25,40);
insert into student(name,physics,chemistry,mathematics)
values('rahul',25,25,50);
insert into student(name,physics,chemistry,mathematics)
values('happy singh',11,12,25);
insert into student(name,physics,chemistry,mathematics)
values('bibs',12,12,25);
insert into student(name,physics,chemistry,mathematics)
values('ajay',25,25,50);
insert into student(name,physics,chemistry,mathematics)
values('johns',20,22,49);
insert into student(name,physics,chemistry,mathematics)
values('ajai',22,19,45);
insert into student(name,physics,chemistry,mathematics)
values('don',10,19,24);

update student
set grade = 'passed'
where physics>=12 and chemistry>=12 and mathematics>=25;
update student
set grade = 'failed'
where physics<12 or chemistry<12 or mathematics<25;

select avg(physics) as average_of_physics from student;

select max(mathematics) as  highest_mark_of_maths from student;
select max(chemistry) as  highest_mark_of_chemistry from student;
select max(physics) as  highest_mark_of_physics from student;

select count(physics) as Students_passed_for_Physics from student
where physics>=12;

select name from student
where grade='passed';

select name,(physics+chemistry+mathematics) as Total_Mark,  grade  from student
order by Total_Mark desc;

select count(mathematics)*100/10 as pass_percentage from student
where mathematics>=25;

select count(physics+chemistry+mathematics)*100/10 as pass_percentage from student
where grade='passed';

select avg(physics+chemistry+mathematics) as class_average from student;

select count (grade) from student
where grade='passed';

















