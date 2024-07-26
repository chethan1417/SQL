create database xworkz;
use xworkz;

create table employee_details(id int);
alter table employee_details add column emp_name varchar(10),add column contact bigint,add column father_name varchar(10),add column mother_name varchar(10),add column aadhar_No bigint;
alter table employee_details drop column father_name,drop column mother_name;
alter table employee_details add column father varchar(10);
alter table employee_details rename column contact to mob_No;
alter table employee_details rename column id to id_No , rename column emp_name to name_of_the_emp,rename column aadhar_No to aadhar,rename column father to father_details;
alter table employee_details modify column  name_of_the_emp int,modify column id_No bigint,modify column mob_no int,modify column aadhar int,modify column father_details bigint;

create database airport_details ;
use airport_details;

create table airport_details(id int);
alter table airport_details add column emp_name varchar(10),add column contact bigint,add column father_name varchar(10),add column mother_name varchar(10),add column aadhar_No bigint;
alter table airport_details drop column father_name,drop column mother_name;
alter table airport_details add column father varchar(10);
alter table airport_details rename column contact to mob_No;
alter table airport_details rename column id to id_No , rename column emp_name to name_of_the_emp,rename column aadhar_No to aadhar,rename column father to father_details;
alter table airport_details modify column  name_of_the_emp int,modify column id_No bigint,modify column mob_no int,modify column aadhar int,modify column father_details bigint;
