create database zappy;
use zappy;

create table adminlogin(userid varchar(50), password varchar(30));


create table addproduct(pid int not null primary key, productname varchar(30), category varchar(40), productprice int, weight int, description varchar(300), image varchar(1000));

create table cart(pid int, quantity int not null , user varchar(20), primary key(quantity, user), FOREIGN KEY (pid) REFERENCES addproduct(pid));

create table customerdetails(FirstName varchar(30), LastName varchar(30), Gender varchar(10), Emailid varchar(40), Mobileno varchar(20), Password varchar(30));

create table orderplaced(oid varchar(20) not null, pid int, quantity int, amount varchar(20), user varchar(20), primary key(oid, amount), FOREIGN KEY (pid) REFERENCES addproduct(pid), FOREIGN KEY (quantity,user) REFERENCES cart(quantity,user));

create table ordertable(oid varchar(20), amount varchar(20), date datetime, status int, FOREIGN KEY (oid,amount) REFERENCES orderplaced(oid,amount));

insert into adminlogin values("lohith", "lohith@123");

insert into addproduct values(1, "lux","soap",30,20,"to bath","https://www.google.co.in/search?q=soap&rlz=1C1CHBF_enIN713IN713&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiiqfe3z8zeAhXCdH0KHSGhAOcQ_AUIDigB&biw=1536&bih=723#imgrc=1iCPG_9EKzuMRM:");

drop table addproduct;

drop table cart;

drop table orderplaced;

drop table ordertable;

create table addproduct(pid int auto_increment primary key, productname varchar(30), category varchar(40), productprice int, weight int, description varchar(300), image varchar(1000));

create table cart(pid int, quantity int not null , user varchar(20), primary key(quantity, user), FOREIGN KEY (pid) REFERENCES addproduct(pid));

create table orderplaced(oid varchar(20) not null, pid int, quantity int, amount varchar(20), user varchar(20), primary key(oid, amount), FOREIGN KEY (pid) REFERENCES addproduct(pid), FOREIGN KEY (quantity,user) REFERENCES cart(quantity,user));

create table ordertable(oid varchar(20), amount varchar(20), date datetime, status int, FOREIGN KEY (oid,amount) REFERENCES orderplaced(oid,amount));

ALTER TABLE ordertable ADD user int;

drop table addproduct;

drop table cart;

drop table orderplaced;

drop table ordertable;

drop table customerdetails;

create table customerdetails(FirstName varchar(30), LastName varchar(30), Gender varchar(10), Emailid varchar(50) primary key, Mobileno varchar(20), Password varchar(30));

create table addproduct(pid int auto_increment primary key, productname varchar(30), category varchar(40), productprice int, weight int, description varchar(300), image varchar(1000));

create table cart(pid int auto_increment, quantity int, user varchar(50), FOREIGN KEY (pid) REFERENCES addproduct(pid));

create table orderplaced(oid varchar(20),orderid varchar(100),pid int, quantity int, amount varchar(20), user varchar(50));

create table ordertable(oid varchar(20),amount varchar(20), date datetime, status int,user varchar(50));
select * from ordertable;

