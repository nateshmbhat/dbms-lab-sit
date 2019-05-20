create table owner2
(
ssn number(10),
name varchar(20),
address varchar(20),
constraint pk41 primary key(ssn)
);
create table car2
(
rgno number(10),
model varchar(10),
color varchar(10),
ssn number(10),
dop date,
constraint pk42 primary key(rgno),
constraint fk41 foreign key(ssn) references owner2(ssn)
);
b)
insert into owner2 values(&ssn,'&name','&address');
insert into owner2 values(4441,'josh','sfsdf');
insert into owner2 values(4442,'john','sfsdf');
insert into owner2 values(4443,'rose','sfsdf');
insert into owner2 values(4444,'robert','sfsdf');
insert into car2 values(&rgno,'&model','&color',&ssn,'&dop');
insert into car2 values(55551,'dfdf','red',4441,'10-jan-2011');
insert into car2 values(55552,'xcdf','black',4441,'11-nov-2011');
insert into car2 values(55553,'dfdfcx','blue',4441,'10-dec-2011');
insert into car2 values(55554,'asdfdf','white',4442,'10-jul-2011');
insert into car2 values(55555,'dfasdf','black',4443,'14-feb-2011');