--set serveroutput on;
--step 1
CREATE OR REPLACE PACKAGE Pk1 AS
PROCEDURE proc1(a int,b int);
PROCEDURE proc2(a int);
FUNCTION fn11(a int) return varchar2;
FUNCTION fn22(a int,b int,c int) return INT;
END Pk1;
--step 2
CREATE OR REPLACE PACKAGE BODY Pk1 AS
PROCEDURE proc1(a int,b int) IS
BEGIN
dbms_output.put_line('Sum:'||(a+b));
dbms_output.put_line('AVG:'||(a+b)/2);
dbms_output.put_line('Product:'||(a*b));
END proc1;
PROCEDURE proc2(a int) IS
BEGIN
dbms_output.put_line('Square root of '||a||' is '||sqrt(a));
END proc2;
FUNCTION fn11(a int) return varchar2 is b varchar2(4);
BEGIN
IF(MOD(a,2)=0) THEN
RETURN 'even';
ELSE
RETURN 'odd';
END IF;
END;
FUNCTION fn22(a int,b int,c int)
return int is d int;
BEGIN
d := a+b+c;
return d;
END fn22;
END Pk1;
--step 3
DECLARE
p int;
q int;
r int;
s int;
result varchar2(4);
sum1 int;
BEGIN
p:=&p;
q:=&q;
r:=&r;
s:=&s;
Pk1.proc1(p,q);
Pk1.proc2(r);
RESULT:=Pk1.fn11(s);
sum1:=Pk1.fn22(p,q,s);
dbms_output.put_line(s ||' is '||result);
dbms_output.put_line('Sum of '||p||','||q||' and '||s||' is '||sum1);
END;