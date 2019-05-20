create table studio
(
st_name varchar(20),
branch varchar(20),
location varchar(20),
constraint pk22 primary key(st_name));
create table movie1
(
sensor_no varchar(20),
title varchar(20),
year number(5),
constraint pk23 primary key(sensor_no)
);


create table star
(
star_name varchar(20),
address varchar(20),
constraint pk24 primary key(star_name)
);
create table owns
(
st_name varchar(20),
sensor_no varchar(20),
constraint pk25 primary key(st_name,sensor_no),
constraint fk21 foreign key(st_name) references studio(st_name),
constraint fk22 foreign key(sensor_no) references movie1(sensor_no)
);
create table acted_by
(
star_name varchar(20),
sensor_no varchar(20),
constraint pk26 primary key(star_name,sensor_no),
constraint fk23 foreign key(star_name) references star(star_name),
constraint fk24 foreign key(sensor_no) references movie1(sensor_no)
);


insert into studio values('&st_name','&branch','&location');
insert into studio values('pixar','blore','dsds');
insert into studio values('warnerbro','pune','wewew');
insert into studio values('legendary','new york','szxzx');
insert into movie1 values('&sensor_no','&title','&date');
insert into movie1 values('s1111','xyz',2011);
insert into movie1 values('s1112','dark knight',2009);
insert into movie1 values('s1113','hurt locker',2009);
insert into star values('&star_name','&address');
insert into star values('heath ledger','california');
insert into star values('caprio','LA');
insert into star values('clooney','NY');
insert into owns values('&st_name','&sensor_no');
insert into owns values('legendary','s1112');
insert into owns values('warnerbro','s1111');
insert into owns values('pixar','s1113');
insert into acted_by values('&star_name','&sensor_no');
insert into acted_by values('heath ledger','s1112');
insert into acted_by values('caprio','s1111');
insert into acted_by values('clooney','s1113');