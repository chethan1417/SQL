create database class;
use class;


create table orders (id int PRIMARY KEY,order_name varchar(30),cost bigint,created_at TIMESTAMP ,created_by varchar(30),modified_at TIMESTAMP ,modified_by VARCHAR(25));
insert into orders values (1,'biryani',200,now(),'chethan',now(),'liki');
insert into orders values (2,'dosa',50,now(),'alok',now(),'yashu');
insert into orders values (3,' chicken',200,now(),'sudu',now(),'vaiju');
insert into orders values (4,'idli',30,now(),'yashu',now(),'chandan');
insert into orders values (5,'pizza',200,now(),'akhil',now(),'goutham');

select * from orders;

CREATE TABLE payment (id INT PRIMARY KEY,price bigint,payment_id INT,order_id INT,payment_status VARCHAR(25),created_at TIMESTAMP ,
created_by VARCHAR(25),modified_at TIMESTAMP ,modified_by VARCHAR(25),FOREIGN KEY (order_id) REFERENCES orders(id));

insert into payment values (1,200,5,1,'completed',now(),'hari',now(),'krishna');
insert into payment values (2,300,4,2,'not completed',now(),'bharath',now(),'alok');
insert into payment values (3,400,3,3,'completed',now(),'boss',now(),'dhruva');
insert into payment values (4,500,2,4,'notcompleted',now(),'vaij',now(),'nirup');
insert into payment values (5,600,1,5,'completed',now(),'kiran',now(),'karan');

select * from payment;


CREATE TABLE restaurant (id INT PRIMARY KEY,restaurant_name VARCHAR(25),restaurant_id INT,location VARCHAR(25),order_id INT,ratings int,
payment_id INT,created_at TIMESTAMP,created_by VARCHAR(25),modified_at TIMESTAMP ,modified_by VARCHAR(25),FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (payment_id) REFERENCES payment(id));

insert into restaurant values(1,'sru palace',2121,'rr nagar',2,4,1,now(),'chethan',now(),'cherry');
insert into restaurant values(2,'hk biryani',2233,'magadi road',3,5,2,now(),'bharath',now(),'pavan');
insert into restaurant values(3,'mallika',2113,'mysore road',4,3,3,now(),'naga',now(),'dharma');
insert into restaurant values(4,'meghana foods',1212,'rajajinagar',5,1,4,now(),'liki',now(),'krish');
insert into restaurant values(5,'bamboo',1313,'bk paliya',1,4,5,now(),'liran',now(),'luffy');

select * from restaurant;


CREATE TABLE delivery (id INT PRIMARY KEY,person_name VARCHAR(25),mode_of_payment ENUM('Cash', 'Card', 'Online'),order_id INT,restaurant_id INT,
created_at TIMESTAMP ,created_by VARCHAR(25),modified_at TIMESTAMP ,modified_by VARCHAR(25),FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (restaurant_id) REFERENCES restaurant(id));

insert into delivery values(1,'shiv','card',1,2,now(),'somesh',now(),'ysah');
insert into delivery values(2,'kumar','card',2,1,now(),'shiva',now(),'arjun');
insert into delivery values(3,'kumba','card',3,3,now(),'uma',now(),'amar');
insert into delivery values(4,'kesav','card',4,5,now(),'danush',now(),'umar');
insert into delivery values(5,'niraj','card',5,4,now(),'chiru',now(),'umseh');

select * from delivery;