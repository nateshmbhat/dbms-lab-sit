create or replace procedure pr6
is
X course%rowtype;
cursor c is select c1.* from course c1, stud1 s,enroll e where s.usn=e.usn and
c1.cid=e.cid ans s.sem='7';
begin
for X in c loop
    sys.dbms_output.put_line(X.name);
end loop;
end;
/