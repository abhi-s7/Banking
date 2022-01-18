create database if not exists abc_banking;

use abc_banking;

create table if not exists customers (
	cust_id int auto_increment PRIMARY KEY,
	cust_name varchar(8),
	phone varchar(10),
	password varchar(16)
);
create table if not exists accounts (
    acc_id int auto_increment primary key,
    cust_id int,
    acc_type varchar(8),
    balance double
    foreign key (cust_id) references customers(cust_id)
);

create table if not exists transactions (
    t_id int auto_increment primary key,
    cust_id int,
    t_date Date,
    withdraw_amt double,
    balance double,
    t_type varchar(10)
    foreign key (cust_id) references customers(cust_id)
);

select * from customers;
select * from accounts;
select * from transactions;