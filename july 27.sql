create database july27;
use july27;

create table bikes(id int not null,b_brand varchar(20),b_name varchar(20) unique,b_cc int,color varchar(20)); 
alter table bikes add constraint cc_chk check (b_cc>100);
alter table bikes drop constraint cc_chk;

insert into bikes values(1,'Royal Enfield','classic',350,'white');
insert into bikes values(2,'bajaj','dominor',250,'black');
insert into bikes values(3,'Royal Enfield','Gt',650,'red');
insert into bikes values(4,'honda','CBR',600,'green');
insert into bikes values(5,'BMW','S1000 RR',1000,'black');

alter table bikes add constraint c_chk check (b_cc>100);
alter table bikes drop constraint c_chk;

==========================

create table cars(id int  ,brand_name varchar(20),car_name varchar(20),contact bigint not null,color varchar(20) unique);
alter table cars modify column id int not null;
alter table cars modify column contact bigint not null unique;

insert into cars values(1,'BMW','q5',8548866698,'black');
insert into cars values(2,'audi','TT',9380284219,'white');
insert into cars values(3,'suzuli','swift',8497006336,'grey');
insert into cars values(4,'suzuki','ertiga',9986788596,'brown');
insert into cars values(5,'wolkswagon','polo',8548866578,'black and white');

alter table cars add constraint id_no_chk check(id>0);
alter table cars drop constraint id_no_chk;

==================================

create table mall(id int primary key,m_name varchar(30) unique,m_loc varchar(20),contact bigint not null unique,manager_name varchar(20));
alter table mall modify column contact bigint not null;
alter table mall modify column manager_name varchar(20) not null;

insert into mall values(1,'GT','magadi road',8548866698,'chethan');
insert into mall values(2,'forum','konunkunte',9380284219,'bharath');
insert into mall values(3,'orion','malleshwaram',9986788596,'varun');
insert into mall values(4,'lulu','rajajinagar',8497006336,'likith');
insert into mall values(5,'nexus','nexa',9978866698,'alok');

alter table mall modify column contact bigint ;
alter table mall modify column m_name varchar(30) not null; 

========================================

create table pg(id int  , pg_name varchar(20) unique,owner_name varchar(20) not null,contact bigint primary key ,rooms_available boolean);
alter table pg add constraint ids_chk check(id>0);
alter table pg drop constraint ids_chk;

insert into pg values(1,'PD stays','guru kiran',8548866698,true);
insert into pg values(2,'sai tej pg',' kiran',9380284219,false);
insert into pg values(3,'golden villa','bhargav',9986788596,true);
insert into pg values(4,'krishna pg','krish',9986754321,false);
insert into pg values(5,'chethan pg','siddu',9987633567,true);

alter table pg modify column id int not null;
alter table pg modify column pg_name varchar(20) not null;






