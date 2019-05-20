-- THIS IS A TEMPORARY FILE TO BE REFERENCED INSIDE SQL CLI AND IS NOT OF ANY VALUE TO THE REPO

create table customer
(
c_id varchar(10),
name varchar(10),
constraint pk71 primary key(c_id)
);
create table account
(
acc_no number(10),
type varchar(10),
balance number(10),
constraint pk72 primary key(acc_no)
);
create table cust_acc
(
c_id varchar(10),
acc_no number(10),
last_tr date,
constraint pk73 primary key(c_id,acc_no),
constraint fk71 foreign key(c_id) references customer(c_id),
constraint fk72 foreign key(acc_no) references account(acc_no)
);
create table address
(
c_id varchar(10),
street varchar(20),
city varchar(20),
state varchar(20),
constraint pk74 primary key(c_id,street,city,state)
);
b)
insert into customer values('&c_id','&name');
insert into customer values('c1111','alex');
insert into customer values('c1112','john');
insert into customer values('c1113','steve');
insert into customer values('c1114','robert');
insert into account values(&acc_no,'&type','&balance');
insert into account values(2001,'savings','8000');
insert into account values(2002,'RD','9000');
insert into account values(2003,'joint','20000');
insert into cust_acc values('&c_id',&acc_no,'&last_tr');
insert into cust_acc values('c1111',2003,'20-jan-2011');
insert into cust_acc values('c1112',2003,'12-feb-2011');
insert into cust_acc values('c1113',2003,'13-jan-2011');
insert into cust_acc values('c1114',2003,'20-mar-2011');
insert into cust_acc values('c1111',2001,'20-dec-2011');
insert into address values('&c_id','&street','&city','&state');
insert into address values('c1111','fsfsf','ccxx','&hghg');
insert into address values('c1111','fsfcc','ccqwq','&hgcxhg');