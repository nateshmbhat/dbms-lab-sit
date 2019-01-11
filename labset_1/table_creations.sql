create table ordering
(
	order_no varchar(10) ,
	item_code varchar(10) ,
	quantity_received int not null ,
	primary key (order_no) ,
	foreign key (item_code) references item(item_code)
);


create table item
(
	item_code varchar(10) not null ,
	item_description varchar(100) not null ,
	unit_price decimal(8,2) ,
	EOQ decimal(8,2) ,
	ROL number(20) ,
	SOH number(20) ,
	back_order_qty number(20) ,
	primary key(item_code)
)
;

create table cheque
(
	cheque_no varchar(10) not null ,
	cheque_date date not null ,
	cheque_amount int not null ,
	primary key(cheque_no)
);


create table vendor
(
	vendor_no varchar(10) not null ,
	vendor_name varchar(10) ,
	vendor_address varchar(100) ,
	primary key(vendor_no)
);


create table section
(
	section_code varchar(10) not null ,
	section_name varchar(10) ,
	primary key(section_code)
);



create table Indent
(
	indent_no varchar(10) not null ,
	quantity_demanded int not null ,
	quantity_issued int not null ,
	section_code varchar(10) ,
	item_code varchar(10) ,
	primary key (indent_no) ,
	foreign key (section_code) references section(section_code) ,
	foreign key (item_code) references item(item_code)
);


create table voucher
(
	voucher_no varchar(10)  ,
	voucher_date date ,
	vendor_no varchar(10) ,
	cheque_no varchar(10) ,
	primary key(voucher_no) ,
	foreign key (cheque_no) references cheque(cheque_no) ,
	foreign key (vendor_no) references vendor(vendor_no)
);


create table order1
(
	order_no varchar(10) not null ,
	order_date date ,
	voucher_no varchar(10) ,
	vendor_no varchar(10) ,
	due_date date ,
	primary key (order_no) ,
	foreign key (voucher_no) references voucher(voucher_no) ,
	foreign key (vendor_no) references vendor(vendor_no)
);


create table item
(
	item_code varchar(10) not null ,
	item_description varchar(100) not null ,
	unit_price decimal(8,2) ,
	EOQ decimal(8,2) ,
	ROL number(20) ,
	SOH number(20) ,
	back_order_qty number(20) ,
	primary key(item_code)
);



-- INSERT INTO TABLE 


insert into item
values ('&item_code' , '&item_description' ,
		'&unit_price' , '&EOF' , '&ROL' , '&SOH' , '&back_order_qty') ;

insert into ordering
values (
	'&order_no', '&item_code' , '&quantity_received'
);


insert into order1 
values (
	'&order_no' , '&order_date' , '&voucher_no' , '&vender_no' , '&due_date'
);


insert into vendor 
values (
	'&vendor_no' , '&vendor_name' ,'&vendor_address' 
);

insert into voucher 
values (
	'&voucher_no' , '&voucher_date' , '&vendor_no' , '&cheque_no'
);

insert into indent
values (
	'&indent_no' , '&quantity_demanded' , '&quantity_issued' , '&section_code', '&item_code' 
);

insert into section
values (
	'&section_no' , '&section_name' 	
);


insert into cheque
values (
	'&cheque_no' , '&cheque_date' , '&cheque_amount'
);