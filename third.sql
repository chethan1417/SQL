create database hosp;
use hosp;

create table hospital_info(Id int,hospital varchar(30),hospital_location varchar(30),patient_name varchar(30),contact bigint,reason varchar(45),email varchar(30),doctor varchar(30),date_of_appointment int,month_of_appointment varchar(30));
desc hospital_info;

insert into  hospital_info values(1,'BMCH','CTA','likith',8548866698,'cold','likith1919@gmail.com','dr.girish',17,'july');
insert into  hospital_info values(2,'BMCH','CTA','alok',9986788596,'cough','alok@gmail.com','dr.girish',16,'july');
insert into  hospital_info values(3,'BMCH','CTA','varun',8548888698,'fever','varun@gmail.com','dr.harish',12,'june');
insert into  hospital_info values(4,'BMCH','CTA','kiran',8523456698,'cough','kiran@gmail.com','dr.sandeep',11,'june');
insert into  hospital_info values(5,'BMCH','CTA','yashu',9923456698,'fever','yashu12@gmail.com','dr.sandeep',10,'june');
insert into  hospital_info values(6,'BMCH','CTA','chandan',9893456698,'headache','chandan@gmail.com','dr.sandeep',11,'june');
insert into  hospital_info values(7,'BMCH','CTA','akhil',8923456698,'cough','akhil@gmail.com','dr.sandeep',11,'july');
insert into  hospital_info values(8,'BMCH','CTA','goutham',9923456698,'cold','gouthu@gmail.com','dr.kumar',11,'june');
insert into  hospital_info values(9,'BMCH','CTA','bhuvan',9993456698,'cough','bhuvan@gmail.com','dr.sandeep',19,'april');
insert into  hospital_info values(10,'BMCH','CTA','karan',8883456698,'headache','karan@gmail.com','dr.kumar',01,'june');
insert into  hospital_info values(11,'BMCH','CTA','likith',8548866698,'cold','likith1919@gmail.com','dr.girish',17,'july');
insert into  hospital_info values(12,'BMCH','CTA','alok',9986788596,'cough','alok@gmail.com','dr.girish',16,'july');
insert into  hospital_info values(13,'BMCH','CTA','varun',8548888698,'fever','varun@gmail.com','dr.harish',12,'june');
insert into  hospital_info values(14,'BMCH','CTA','kiran',8523456698,'cough','kiran@gmail.com','dr.sandeep',11,'june');
insert into  hospital_info values(15,'BMCH','CTA','yashu',9923456698,'fever','yashu12@gmail.com','dr.sandeep',10,'june');
insert into  hospital_info values(16,'BMCH','CTA','chandan',9893456698,'headache','chandan@gmail.com','dr.sandeep',11,'june');
insert into  hospital_info values(17,'BMCH','CTA','akhil',8923456698,'cough','akhil@gmail.com','dr.sandeep',11,'july');
insert into  hospital_info values(18,'BMCH','CTA','goutham',9923456698,'cold','gouthu@gmail.com','dr.kumar',11,'june');
insert into  hospital_info values(19,'BMCH','CTA','bhuvan',9993456698,'cough','bhuvan@gmail.com','dr.sandeep',19,'april');
insert into  hospital_info values(20,'BMCH','CTA','karan',8883456698,'headache','karan@gmail.com','dr.kumar',01,'june');


select * from hospital_info;

create  database tourist;
use tourist;

create table tourist_info(Sl_No int,tourists_names varchar(30),age int,state varchar(30),district varchar(30),contact bigint,adress varchar(45),email varchar(30),gender varchar(30),date_of_visit int,month_of_visit varchar(30));
desc tourist_info;

insert into  tourist_info values(1,'chethan',22,'Karnataka','CTA',8548866698,'kelgote Cta','chethan@gmail.com','male',17,'july');
insert into  tourist_info values(2,'varun',21,'Karnataka','CTA',9380284219,'kelgote Cta','varun@gmail.com','male',18,'july');
insert into  tourist_info values(3,'akhil',21,'Karnataka','CTA',9990284219,'kelgote Cta','nanu@gmail.com','male',18,'july');
insert into  tourist_info values(4,'likith',21,'Karnataka','CTA',9980284219,'kelgote Cta','ninu@gmail.com','male',18,'july');
insert into  tourist_info values(5,'kumar',21,'Karnataka','CTA',8980284219,'kelgote Cta','avnu@gmail.com','male',18,'july');
insert into  tourist_info values(6,'kiran',25,'Karnataka','CTA',9380284219,'kelgote Cta','evnu@gmail.com','male',18,'july');
insert into  tourist_info values(7,'karan',26,'Karnataka','CTA',8980284219,'kelgote Cta','innobba@gmail.com','male',18,'july');
insert into  tourist_info values(8,'yashu',27,'Karnataka','CTA',9380284219,'kelgote Cta','va@gmail.com','male',18,'july');
insert into  tourist_info values(9,'bhuvan',21,'Karnataka','CTA',88980284219,'kelgote Cta','run@gmail.com','male',18,'july');
insert into  tourist_info values(10,'yashwanth',23,'Karnataka','CTA',9380284219,'kelgote Cta','yashn@gmail.com','male',18,'july');
insert into  tourist_info values(11,'chethan',22,'Karnataka','CTA',8548866698,'kelgote Cta','chethan@gmail.com','male',17,'july');
insert into  tourist_info values(12,'varun',21,'Karnataka','CTA',9380284219,'kelgote Cta','varun@gmail.com','male',18,'july');
insert into  tourist_info values(13,'akhil',21,'Karnataka','CTA',9990284219,'kelgote Cta','nanu@gmail.com','male',18,'july');
insert into  tourist_info values(14,'likith',21,'Karnataka','CTA',9980284219,'kelgote Cta','ninu@gmail.com','male',18,'july');
insert into  tourist_info values(15,'kumar',21,'Karnataka','CTA',8980284219,'kelgote Cta','avnu@gmail.com','male',18,'july');
insert into  tourist_info values(16,'kiran',25,'Karnataka','CTA',9380284219,'kelgote Cta','evnu@gmail.com','male',18,'july');
insert into  tourist_info values(17,'karan',26,'Karnataka','CTA',8980284219,'kelgote Cta','innobba@gmail.com','male',18,'july');
insert into  tourist_info values(18,'yashu',27,'Karnataka','CTA',9380284219,'kelgote Cta','va@gmail.com','male',18,'july');
insert into  tourist_info values(19,'bhuvan',21,'Karnataka','CTA',88980284219,'kelgote Cta','run@gmail.com','male',18,'july');
insert into  tourist_info values(20,'yashwanth',23,'Karnataka','CTA',9380284219,'kelgote Cta','yashn@gmail.com','male',18,'july');

select * from tourist_info;

