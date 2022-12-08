set serveroutput on
Declare
Fac Number :=1;
n number := &n;
Begin
While n > 0 Loop
fac:=n*fac;
n:=n-1;
End Loop;
dbms_output.put_line(fac);
End;


///////////////////////////////////////////////////////////////////////////////
set serveroutput on;
Declare
a number;
b number;
c number;
Begin
dbms_output.put_line('Enter a:');
a:=&a;
dbms_output.put_line('Enter b:');
b:=&b;
dbms_output.put_line('Enter c:');
c:=&C;
if (a>b) and (a>c)
Then
dbms_output.put_line('A is GREATEST: '||A);
elsif (b>a) and (b>c)
Then
dbms_output.put_line('B is GREATEST: '||B);
Else
dbms_output.put_line('C is GREATEST: '||C);
end if;
End;

////////////////////////////////////////////////////////////////////////////////
set serveroutput on;
Declare
N1 Number;
n2 Number;
Cal Int;
out number;
Begin
Dbms_Output.Put_Line('Enter first number');
N1:=&N1;
Dbms_Output.Put_Line('Enter second number');
N2:=&N2;
dbms_output.put_line('1)addition ,2) substraction ,3)multiplication , 4)division');
Dbms_Output.Put_Line('Enter an option');
Cal:=&Cal;
Case Cal
When 1 Then
Out:=N1+N2;
Dbms_Output.Put_Line(Out);

When 2 Then
Out:=N1-N2;
Dbms_Output.Put_Line(Out);

When 3 Then
Out:=N1*N2;
Dbms_Output.Put_Line(Out);

When 4 Then
Out:=N1/N2;
Dbms_Output.Put_Line(Out);

else dbms_output.put_line('Sorry incorrect option');
End Case;
end;

////////////////////////////////////////////////////////////////////////////////
set serveroutput on
declare
a number := 0;
b number := 1;
temp number;
n number;
i number;
Begin
dbms_output.put_line('Enter n:');
n:=&n;
dbms_output.put_line('fibonacci series is :');
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 2..n
loop
temp:= a + b;
a := b;
b := temp;
dbms_output.put_line(temp);
End Loop;
End;
////////////////////////////////////////////////////////////////////////////////
set serveroutput on;
Declare
N1 Number;
N2 Number;
out number;
Begin
Dbms_Output.Put_Line('Enter first number');
N1:=&N1;
Dbms_Output.Put_Line('Enter second number');
N2:=&N2;
Out:=N1/N2;
Dbms_Output.Put_Line(Out);
Exception
When Zero_Divide Then
Dbms_Output.Put_Line('division by zero error!!!');
End;
////////////////////////////////////////////////////////////////////////////////
Create Table Exc(G_Id Int , G_Name Varchar(20), Marks Int);
Insert Into Exc Values(1, 'Suraj',100);
Insert Into Exc Values(2, 'Praveen',97);
Insert Into Exc Values(3, 'Jessie', 99);

Set Serveroutput On;
DECLARE
temp varchar(20);
Begin
Select G_Id Into Temp From Exc Where G_Name='Suraj';
Dbms_Output.Put_Line('suraj present '|| Temp);
Select G_Id Into Temp From Exc Where G_Name='raju';
dbms_output.put_line('suraj present '|| temp);
exception
When No_Data_Found Then
dbms_output.put_line('ERROR there is no name as raju in exc table!!!!');
End;
////////////////////////////////////////