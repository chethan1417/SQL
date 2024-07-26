create database july24;
use july24;

create table state_info(id_no int,state_name varchar(30),no_of_districts int,state_capital varchar(30),short_form varchar(30));
alter table state_info add column chief_minister_name varchar(30), add column ruling_party_name varchar(30),add column opposite_party_name varchar(30),add column state_population bigint,add column state_language varchar(30);
alter table state_info rename column chief_minister_name to CM_name, rename column ruling_party_name to ruling_party,rename column opposite_party_name to opposite_party,rename column state_population to population , rename column state_capital to capital;

insert into state_info values(1,'karnataka',31,'Bengaluru','KA','Siddu bro','congres','BJP',64100000,'kannada');
insert into state_info values(2,'Andra Pradesh',26,'Amaravathi','AP','chandra babu naidu','TDP','JSP',94600000,'telugu');
insert into state_info values(3,'kerala',14,'thiruvananthapuram','KE','pinarayi vijayan','communist party','LDF',34600000,'malyalam');
insert into state_info values(4,'Tamil nadu',38,'Chennai','TN','M k Stalin','DMK','PT',72100000,'tamil');
insert into state_info values(5,'Maharastra',36,'mumbai','MU','eknath shinde','Shiv sena','INC',12400000,'marati');
insert into state_info values(6,'Madya pradesh',52,'bhopal','MP','shivraj singh chouhan','BJP','INC',750000,'hindi');
insert into state_info values(7,'odisha',30,'Bhubaneshwar','OD','naveen patnaik','BJD','INC',4500000,'odia');
insert into state_info values(8,'west bengal',23,'kolkata','WB','mamata banerjee','AITC','INC',9100000,'bengali');
insert into state_info values(9,'uttarkhand',13,'dehradun','UK','pushkar singh','BJP','INC',110000,'hindi');
insert into state_info values(10,'arunachal pradesh',25,'itanagar','AR','pema khandu','BJP','INC',1400000,'hindi');
insert into state_info values(11,'assam',34,'dispur','AS','himanta biswa sharma','BJP','INC',3100000,'assamese');
insert into state_info values(12,'bihar',38,'patna','BH','nitish kumar','JDU','RJD',1040000,'hindi');
insert into state_info values(13,'chhattisgarh',28,'raipur','CH','bhupesh baghel','INC','BJP',2500000,'hindi');
insert into state_info values(14,'goa',2,'panaji','GA','pramod sawanth','BJP','INC',10000,'konkani');
insert into state_info values(15,'gujarat',33,'gandhinagar','GJ','bhupendra patel','BJP','INC',60000000,'gujrati');
insert into state_info values(16,'haryana',22,'chandigarh','CG','manohar lal','BJP','INC',25000000,'hindi');
insert into state_info values(17,'himacha pradesh',12,'shimla','HP','sukhvinder singh','JNC','BJP',7000000,'hindi');
insert into state_info values(18,'Maharastra',36,'mumbai','MH','eknath shinde','BJP','INC',12500000,'marati');
insert into state_info values(19,'manipur',16,'imphal','MN','biren singh','BJP','INC',28000000,'manipur');
insert into state_info values(20,'meghalaya',11,'shillong','MG','conrad sangma','NPP','INC',32000000,'khasi');

update state_info set population=11000000 where id_no=9;
update state_info set state_name='AndraPradesh' where id_no=2;
update state_info set state_name='tamilNadu' where id_no=4;
update state_info set state_name='MadyaPradesh' where id_no=6;
update state_info set state_name='WestBengal' where id_no=8;
update state_info set state_name='ArunaCharPradesh' where id_no=10;
update state_info set state_name='HimachalPradesh' where id_no=17;
update state_info set CM_name='Siddaramaiha' where id_no=1;
update state_info set CM_name='BHupesh' where id_no=13;
update state_info set capital='BENGALURU' where id_no=1;

delete from state_info where capital='imphal';
delete from state_info where capital='chennai';
delete from state_info where capital='itanagar';

select * from state_info where state_name='karnataka' and id_no=1 ;
select * from state_info where state_name='kerala' or id_no=3 ; 
select * from state_info where capital in('mumbai' ,'bhopal','kolkata') ; 

select * from state_info;

===============================================



create table scam_info(id_no int,scam_name varchar(30),no_of_members int,total_loss_amount bigint,country_name varchar(30));
alter table scam_info add column state varchar(30), add column year_happend bigint,add column district varchar(30),add column time_happend int,add column Arrested boolean;
alter table scam_info rename column id_no to id, rename column total_loss_amount to total_loss,rename column country_name to country,rename column no_of_members to members ;

insert into scam_info values(1,'scam1',10,30000000,'india',' karnataka',2023,'bengaluru',10,true);
insert into scam_info values(2,'scam2',30,7800000,'pakk',' xxx',2023,'yyy',9,true);
insert into scam_info values(3,'scam3',9,988600000,'china',' kungf',2010,'para',3,false);
insert into scam_info values(4,'scam4',2,8900000,'bangladesh','mirja',2012,'koli',1,false);
insert into scam_info values(5,'scam5',10,440000,'india',' tamilnadu',2011,'chennai',6,true);
insert into scam_info values(6,'scam6',4,77889000,'india',' andrapradesh',1999,'raydurg',8,true);
insert into scam_info values(7,'scam7',10,25376484,'iran',' que',2019,'our',1,false);
insert into scam_info values(8,'scam8',3,99000000,'dubai','aram',1989,'man',2,true);
insert into scam_info values(9,'scam9',4,44550000,'australia','klayton',2015,'bany',7,true);
insert into scam_info values(10,'scam10',90,888000,'india',' karnataka',2010,'chitradurga',9,true);











update scam_info set state='bolu' where id=2;
update scam_info set state='queata' where id=7;
update scam_info set country='pakistan' where id=2;
update scam_info set district='oura' where id=7;
update scam_info set members=40 where id=6;

update scam_info set state='kungfuu' where id=3;
update scam_info set state='mirajaa' where id=4;
update scam_info set country='iranuu' where id=7;
update scam_info set district='dubaiii' where id=8;
update scam_info set members=20 where id=4;



delete from scam_info where state='chennai';
delete from scam_info where district='raydurg';
delete from scam_info where total_loss=440000;

select * from scam_info where state='karnataka' and id=1 ;
select * from scam_info where state='aram' or id=8; 
select * from scam_info where country in('india' ,'china','dubai') ; 

select * from scam_info;




