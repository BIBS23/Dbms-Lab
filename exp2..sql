create table author(
author_id int,
Name varchar(10), 
Email_Id varchar(20),  
Phone_Number int, 
Status varchar(10),
primary key(author_id)
);

create table publisher(
publisher_Id int, 
Name varchar(10), 
address varchar(20),
primary key (publisher_id)
);

create table member(
Member_Id varchar(20), 
Name varchar(10), 
Branch_Code int, 
Roll_Number int, 
Phone_Number int, 
Email_Id varchar(20), 
Date_of_Join int, 
Status varchar(10),
primary key(member_id)
);

create table language(
language_id int, 
Name varchar(15),
primary key(language_id)
);

create table book(
book_id int, 
title varchar(25), 
language_id int, 
mrp int, 
publisher_id int, 
published_date int, 
volume int, 
status varchar(10),
primary key(book_id),
foreign key(publisher_id) references publisher(publisher_id),
foreign key(language_id) references language(language_id)
);

create table book_author(
book_id int, 
author_id int,
primary key(book_id,author_id),
foreign key(book_id) references book(book_id),
foreign key(author_id) references author(author_id)
);

create table book_issue(
issue_id int,
book_id int,
member_id varchar(20),
actual_date_of_return int, 
latedays int, 
latefee int,
primary key(issue_id),
foreign key(book_id) references book(book_id),
foreign key(Member_id) references member(Member_id)
);

create table book_return(
issue_id int, 
actual_date_of_return int, 
latedays int, 
latefee int,
primary key(issue_id),
foreign key(issue_id) references book_issue(issue_id)
);

create table latefee(
fromdays int, 
todays  int, 
amount int,
primary key(fromdays,todays,amount)
);









