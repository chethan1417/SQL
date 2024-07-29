create database july26;
use july26;

create table show_room(id int not null,s_name varchar(30) unique,s_location varchar(20) unique,s_building varchar(30),opening_time int ,closing_time int,distance_in_KM int,contact bigint not null,manager_name varchar(30),floor_no int);

insert into show_room values(1,'Royal enfield','chitradurga','priya arcade',9,6,4,9380284219,'kiran',2);
insert into show_room values(2,'allen solly','CTA','guru arcade',10,11,8,9775284219,'bharath',1);
insert into show_room values(3,'puma','dvg','vasvi mahal',11,10,5,8345988421,'akhil',4);
insert into show_room values(4,'bata','davangere','vedha comforts',10,10,22,0988768878,'likith',1);
insert into show_room values(5,'honda','hassan','krish aparts',10,9,5,8546688876,'kumar',0);
insert into show_room values(6,'ktm','hsn','gokul aparts',8,10,4,999688876,'alok',1);
insert into show_room values(7,'twin birds','gadag','bharath comforts',9,9,3,998877612,'guru',1);
insert into show_room values(8,'levis','hubli','bhargav aparts',9,12,99,993578674,'vinu',0);
insert into show_room values(9,'nike','dharvad','beauty aparts',10,10,15,88342334876,'yashu',3);
insert into show_room values(10,'adidas','banglore','kr comforts',7,11,88,778833456,'basvaraj',0);
 
 
alter table show_room modify id int;
alter table show_room add constraint dist_chk check(distance_in_KM>2);
alter table show_room add constraint open_chk check(opening_time>6);
alter table show_room modify column opening_time int not null;
alter table show_room modify column s_building varchar(30) unique;

select * from show_room;


==============================


create table chat_center(id int,c_name varchar(30) unique,c_location varchar(20) unique,c_type varchar(30),opening_time int ,distance_in_KM int,contact bigint not null,owner_name varchar(30),nonveg_available boolean);

insert into chat_center values(1,'chethan chats','chitradurga','chinese',5,6,9380284219,'kiran',true);
insert into chat_center values(2,'siri chats','CTA','banarpet',4,8,9775284219,'bharath',true);
insert into chat_center values(3,'poo chats','dvg','churmuri',5,10,8345988421,'akhil',false);
insert into chat_center values(4,'maaaa chats','davangere','gobi',12,22,0988768878,'likith',false);
insert into chat_center values(5,'sanjan chats','hassan','south chats',8,11,8546688876,'kumar',true);
insert into chat_center values(6,'likith chats','hsn','samosa',5,4,999688876,'alok',false);
insert into chat_center values(7,'akhil chats','gadag','bajji',6,3,998877612,'guru',false);
insert into chat_center values(8,'goutham chats','hubli','bakes',3,12,993578674,'vinu',true);
insert into chat_center values(9,'ganesh chats','dharvad','indian',12,15,88342334876,'yashu',false);
insert into chat_center values(10,'sudarshan chats','banglore','veggies',10,88,778833456,'basvaraj',true);
 
 
alter table chat_center modify id int not null;
alter table chat_center add constraint distance_chk check(distance_in_KM>2);
alter table chat_center add constraint opening_chk check(opening_time>1);
alter table chat_center modify column opening_time int not null;
alter table chat_center modify column c_location varchar(20) unique;

select * from chat_center;

=================================

create table temple_info(id int not null,t_name varchar(30) unique,t_location varchar(20) unique,religion varchar(20),opening_time int ,closing_time int,capacity int,contact bigint not null,poojari_name varchar(30),cross_no int);

insert into temple_info values(1,'anjaneya temple','chitradurga','hindu',5,10,100,9380284219,'kiran poojar',2);
insert into temple_info values(2,'bargeramma temple','CTA','hindu',4,7,70,9775284219,'bharath achar',1);
insert into temple_info values(3,'jama masjid','dvg','muslims',9,10,200,8345988421,'salman',4);
insert into temple_info values(4,'holy church','davangere','cristian',10,10,90,988768878,'likaran',1);
insert into temple_info values(6,'iscon','hsn','hindu',9,10,500,6784590876,'alok',1);
insert into temple_info values(7,'baba masjid','gadag','muslims',9,9,300,998877612,'zaid',1);
insert into temple_info values(8,'crist church','hubli','cristian',9,12,99,993578674,'balim',0);
insert into temple_info values(9,'shiva temple','dharvad','hindu',5,10,898,88342334876,'yashwanth',3);
insert into temple_info values(10,'ekanatheshwari temple','banglore','kattar hindu',5,11,998,778833456,'basvaraj',9);
 
 
alter table temple_info modify id int;
alter table temple_info add constraint distance1_chk check(capacity>50);
alter table temple_info modify column opening_time int not null;
alter table temple_info modify column contact bigint unique;

select * from temple_info;

=====================


create table market_info(id int not null,market_name varchar(30) unique,market_location varchar(20) unique,street_name varchar(30),opening_time int ,closing_time int,_24_hours_open boolean,contact bigint not null,owner_name varchar(30),sunday_open boolean);

insert into market_info values(1,'pike place market','WA','seattle',9,6,true,9380284219,'kiran',true);
insert into market_info values(2,'borough market','london','southwark street',10,11,true,9775284219,'bharath',true);
insert into market_info values(3,'la boqueria','spain','la rambla',11,10,false,8345988421,'akhil',false);
insert into market_info values(4,'ts fish market','tokyo','japan',10,10,false,0988768878,'likith',true);
insert into market_info values(5,'lawrence','canada','front street',10,9,true,8546688876,'kumar',false);
insert into market_info values(6,'tor kor','thailand','kam phet road',8,10,true,999688876,'alok',true);
insert into market_info values(7,'grand bazar','turkey','istanbul',9,9,false,998877612,'guru',false);
insert into market_info values(8,'union square','NY','east 17th street',9,12,true,993578674,'vinu',false);
insert into market_info values(9,'viktualient','germany','vikt street',10,10,true,88342334876,'yashu',true);
insert into market_info values(10,'mercado','spain1','plaza de san',7,11,false,778833456,'basvaraj',false);
 
 
alter table market_info modify id int;
alter table market_info add constraint closing_chk check(closing_time>5);
alter table market_info add constraint opens_chk check(opening_time>6);
alter table market_info modify column closing_time int not null;
alter table market_info modify column market_location varchar(20) unique;

select * from market_info;


=======================



create table metro_info(id int not null,metro_station varchar(30) unique,district varchar(20) ,line_name varchar(30),opening_time int ,closing_time int,color varchar(20),contact bigint not null,manager_name varchar(30),state_name varchar(20));

insert into metro_info values(1,'magadi metro','banglore','purple line',5,11,'purple',9380284219,'kiran','karnataka');
insert into metro_info values(2,'kempegowda','bengaluru','green line',5,11,'green',9775284219,'bharath','karnataka');
insert into metro_info values(3,'ksr','bengaluru','purpleline',5,12,'purple',8345988421,'akhil','KA');
insert into metro_info values(4,'btm','bng','yellow line',5,11,'yellow',0988768878,'likith','KA');
insert into metro_info values(5,'banashankari','bengaluru','green line',5,11,'green',8546688876,'kumar','Karnataka');
insert into metro_info values(6,'rr nagar','bengaluru','purple line',5,12,'purple',999688876,'alok','kar');
insert into metro_info values(7,'mysore road','bng','purple line',5,12,'purple line',998877612,'guru','karnatak');
insert into metro_info values(8,'chowk','mumbai','line two',9,12,'grey',993578674,'vinu','maharastra');
insert into metro_info values(9,'electronic city','bengaluru','yellow line',10,10,'yelloe',88342334876,'yashu','KA');
insert into metro_info values(10,'jaynagar','banglore','green line',5,11,'green',778833456,'basvaraj','karnataka');
 
 
alter table metro_info modify id int;
alter table metro_info add constraint id_chk check(id>0);
alter table metro_info add constraint openers_chk check(opening_time>4);
alter table metro_info modify column opening_time int not null;
alter table metro_info modify column contact bigint unique;

select * from metro_info;









