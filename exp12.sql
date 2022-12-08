create table Banks(
bankcode varchar(3),
bankname varchar(50) NOT NULL,
headoffice varchar(50),
branches int CHECK (branches>0),
primary key(bankcode)
);


create table Branch(
branchid varchar(50),
branchname varchar(50) DEFAULT 'New Delhi',
bankid varchar(3),
primary key(branchid),
foreign key(bankid) references Banks(bankcode)
);

DELETE FROM Banks where bankcode='SBT';

alter table Branch
drop Primary key;


CREATE VIEW bank_head_office AS
SELECT bankcode,bankname,headoffice,branches
FROM banks
WHERE headoffice LIKE 'ERNAKULAM';


CREATE VIEW bank_branch AS
SELECT branchid,branchname,bankid
FROM branch
WHERE branchname LIKE 'Kottayam';






