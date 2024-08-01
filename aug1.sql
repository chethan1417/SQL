create database aug1;
use aug1;

create table students(id int primary key,s_name varchar(20) unique,s_age int not null,s_gender varchar(20) not null,s_result boolean);

insert into students values(1,'chethan',22,'male',true);
insert into students values(2,'nidhi',22,'female',false);
insert into students values(3,'vaiju',23,'male',true);
insert into students values(4,'likith',22,'male',false);
insert into students values(5,'alok',24,'male',false);
insert into students values(6,'siddu',25,'male',true);
insert into students values(7,'amrutha',28,'female',true);
insert into students values(8,'maaa',21,'female',false);
insert into students values(9,'ammu',20,'female',true);
insert into students values(10,'jaanu',19,'female',false);

select * from students where id between 1 and 5;
select * from students where s_name like 'a%';
select * from students where s_name like 'a%a';
select * from students where s_name like 'c%h%n';

select * from students order by id ;
select * from students order by id desc;

select s_name, UPPER(s_name) as uppername , length(s_name) as namelength from students; 

create index idx_s_name on students(s_name);
select* from students;



========================================

create table customers(id int primary key,c_names varchar(20) unique,bill_total bigint not null,no_of_items int not null unique,bill_status varchar(20));

insert into customers values(1,'chethan',4547,20,'paid');
insert into customers values(2,'nidhi',1200,10,'paid');
insert into customers values(3,'vaiju',499,2,'not paid');
insert into customers values(4,'likith',9899,16,'not paid');
insert into customers values(5,'alok',255,1,'paid');
insert into customers values(6,'akhil',8765,18,' not paid');
insert into customers values(7,'goutham',3333,9,'paid');
insert into customers values(8,'siddu',1999,8,'paid');
insert into customers values(9,'varun',25444,45,'paid');
insert into customers values(10,'kiran',600,5,'not paid');


select * from customers where id between 1 and 5;
select * from customers where c_names like 'a%';
select * from customers where c_names like 'a%a';
select * from customers where c_names like 'c%h%n';

select * from customers order by id ;
select * from customers order by id desc;

select c_names, UPPER(c_names) as uppername , length(c_names) as namelength from customers; 

create index idx_c_name on students(c_names);
select* from customers;
