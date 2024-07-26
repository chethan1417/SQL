create database july20;
use july20;

create table movie_info(id int,movie_language varchar(20),movie_name varchar(20),theater_name varchar(20),movie_director_name varchar(20),movie_hero_name varchar(20));
alter table movie_info add column budject bigint,add column visiters_contact bigint,add column total_no_of__seats int,add column no_of_seats_available int,add column three_D_availablity boolean;
alter table movie_info rename column movie_director_name to movie_director,rename column total_no_of__seats to total_seats,rename column movie_hero_name to hero_name,rename column no_of_seats_available to seats_available,rename column three_D_availablity to three_D_available;
select * from movie_info;

insert into movie_info values(1,'kannada','addhuri','prasanna','chethan','dhruva',10000000,8548866698,50,25,true);
insert into movie_info values(2,'kannada','bahaddur','lulu','vaiju','dhruva',20000000,9988866698,80,35,false);
insert into movie_info values(3,'kannada','bharjari','shankar','rajiv','dhruva',30000000,8497066698,50,15,true);
insert into movie_info values(4,'kannada','pogaru','aisiri','varun','appu',90000000,8497006336,100,10,true);
insert into movie_info values(5,'telugu','maharaja','prasanna','guruji','sai',90000000,9987666698,110,65,false);
insert into movie_info values(6,'tamil','kalki','gtmall','bhat','prabhas',70000000,896435688,30,5,true);
insert into movie_info values(7,'kannada','appu','prasanna','bhatji','punith',25000000,8497006336,200,2,false);
insert into movie_info values(8,'kannada','kd','shankar','babu','dhruva',45000000,8548866698,90,25,true);
insert into movie_info values(9,'telugu','sonofsatya','prasanna','babugaru','prabhas',30000000,9998866698,340,10,false);
insert into movie_info values(10,'kannada','milana','shankar','kiran','appu',35000000,7788966698,500,295,false);


update movie_info set total_seats=200 WHERE id=1;
update movie_info set total_seats=200 WHERE id=2;
update movie_info set total_seats=200 WHERE id=3;
update movie_info set total_seats=200 WHERE id=4;
update movie_info set total_seats=200 WHERE id=5;

delete from movie_info where movie_name='kd';
delete from movie_info where theater_name='aisiri';
delete from movie_info where movie_name='pogaru';
 
select * from movie_info where id=2; 
select * from movie_info where movie_language=tamil;
select * from movie_info where movie_director=bhatji and id=3 ;
select * from movie_info where movie_director=chethan or id=2 ; 
select * from movie_info where movie_director in(chethan ,vaiju,rajiv) ; 
select * from movie_info where movie_director not in(bhat ,babugaru,rajiv) ; 

select * from movie_info;

create table bank_info(id int,bank_name varchar(20),branch_name varchar(20),manager_name varchar(20),watchman_name varchar(20),building_name varchar(20));
alter table bank_info add column no_of_accounts bigint,add column no_of_joint_accounts bigint,add column open_time int,add column close_time int,add column opened boolean;
insert into bank_info values(1,'union','chitradurga','chethan','vaiju','akshara',900000,9966698,10,5,true);
insert into bank_info values(2,'sbi','hlk','vaiju','vaiju','boby',110000,996,10,5,false);
insert into bank_info values(3,'karnataka','clk','varun','vaiju','alok',330000,698,10,7,false);
insert into bank_info values(4,'hdfc','bng','kiran','vaiju','kiru',990000,68,10,4,true);
insert into bank_info values(5,'state','smg','karan','vaiju','karan',430000,921,10,8,false);
insert into bank_info values(6,'local','gadag','likith','vaiju','bhai',110000,621,10,7,true);
insert into bank_info values(7,'rbi','dvg','chethan','akhil','bro',900000,77,10,6,false);
insert into bank_info values(8,'corporate','bellary','goutham','lavakumar','akshara',780000,9966698,10,4,true);
insert into bank_info values(9,'axis','hassan','chethan','siddu','sandeep',980000,123,10,3,false);
insert into bank_info values(10,'canara','mysore','chethan','alok','hod',900000,321,10,4,true);

update bank_info set open_time=9 WHERE id=1;
update bank_info set open_time=9 WHERE id=2;
update bank_info set open_time=9 WHERE id=3;
update bank_info set open_time=9 WHERE id=4;
update bank_info set open_time=9 WHERE id=5;

delete from bank_info where branch_name='smg';
delete from bank_info where manager_name='chethan';
delete from bank_info where bank_name='hdfc';


select * from bank_info where id=2; 
select * from bank_info where manager_name='goutham';
select * from bank_info where bank_name='sbi' and id=3 ;
select * from bank_info where watchman_name in('boby' ,'vaiju','alok'); 
select * from bank_info where bank_name not in('state','canara','rbi'); 

select * from bank_info;