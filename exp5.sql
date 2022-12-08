SELECT CEIL( 8.29 ) FROM DUAL;

SELECT FLOOR( 9.76 ) FROM DUAL;

SELECT SQRT(100) FROM DUAL;

SELECT GREATEST('APPLE','BANANA','COCONUT','CASHEWNUT','PAPAYA')AS GREATEST FROM DUAL;

SELECT LEAST('APPLE','BANANA','COCONUT','CASHEWNUT','PAPAYA') AS LEAST FROM DUAL;

SELECT CURRENT_TIMESTAMP FROM DUAL;

SELECT TO_CHAR(SYSDATE ,'MONTH/DD/YYYY') AS "DIFFERENT FORMATS" FROM DUAL;

SELECT ABS(8.29) FROM DUAL;

create table angle(
Angle float(5),
Sin float(5),
Cos float(5),
Tan float(5),
cot float(5),
Sec float(5)
);
INSERT INTO angle (angle,sin,cos,tan,sec)
values(0,sin(0*3.141/180),cos(0*3.141/180),tan(0*3.141/180),1/cos(0*3.141/180));
INSERT INTO ANGLE
values(30,sin(30*3.141/180),cos(30*3.141/180),tan(30*3.141/180),1/cos(30*3.141/180),1/tan(30*3.141/180));
INSERT INTO ANGLE
values(45,sin(45*3.141/180),cos(45*3.141/180),tan(45*3.141/180),1/cos(45*3.141/180),1/tan(45*3.141/180));
INSERT INTO ANGLE
values(60,sin(60*3.141/180),cos(60*3.141/180),tan(60*3.141/180),1/cos(60*3.141/180),1/tan(90*3.141/180));
INSERT INTO ANGLE (angle,sin,cos,cot)
values(90,sin(90*(3.141/180)),cos(90*(3.141/180)),1/tan(90*(3.141/180)));
SELECT * FROM ANGLE;


SELECT REVERSE('nmutuAotedOehT') FROM DUAL;

SELECT ltrim ('123231xyzTech','123xyz')from dual;

SELECT rtrim('computer   ') from dual;

SELECT RPAD('computer',12,'X') FROM DUAL;

SELECT length('database management systems') from dual;

SELECT concat('Julius','Caesar') from dual;

select substr('india is my country','7','2') from dual;














