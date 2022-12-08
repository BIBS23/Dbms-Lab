create table Bank(

bankname varchar(15),
headoffice varchar(15),
branch varchar(15),
branchcode varchar(15)
);

insert into  Bank
values ('federalbank','Erattupetta','teekoy','1001');
COMMIT;
rollback;
insert into  Bank
values ('sbi','Erattupetta','teekoy','1002');
savepoint a;
rollback;


GRANT SELECT,UPDATE ON bank TO public;
REVOKE SELECT, UPDATE ON bank FROM PUBLIC;
