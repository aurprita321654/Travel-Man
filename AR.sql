create database mns;

use mns;

CREATE TABLE customer (
  cid int NOT NULL,
  cname varchar(45) DEFAULT NULL,
  caddress varchar(45) DEFAULT NULL,
  cphone varchar(20) DEFAULT NULL,
  PRIMARY KEY (cid)
);



CREATE TABLE employee (
  eid int identity(1,1) primary key,
  ename varchar(45) NOT NULL,
  ephone varchar(20) NOT NULL,
  eaddress varchar(45) DEFAULT NULL,
  eJdate date NOT NULL 
);

CREATE TABLE login (
  username varchar(45) NOT NULL,
  password varchar(45) NOT NULL,
  PRIMARY KEY (password,username)
) ;





CREATE TABLE places (
  idplaces int NOT NULL,
  city varchar(45) NOT NULL,
  distance varchar(45) NOT NULL
);

CREATE TABLE trip (
  tid int NOT NULL,
  source varchar(45) DEFAULT NULL,
  dest varchar(45) DEFAULT NULL,
  sdate date DEFAULT NULL,
  edate date DEFAULT NULL,
  PRIMARY KEY (tid)
  
 
);


CREATE TABLE vehicle (
  vid int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  vname varchar(50) DEFAULT NULL,
  capacity int DEFAULT NULL,
  vtype varchar(50) DEFAULT NULL,
  regno varchar(50) DEFAULT NULL
);

CREATE TABLE payment (
  TID int NOT NULL,
  CID int NOT NULL,
  DISTANCETRAVEL varchar(45) DEFAULT NULL,
  AMOUNT varchar(45) DEFAULT NULL,
  PDATE date DEFAULT NULL,
  PRIMARY KEY (TID,CID),
  FOREIGN KEY (CID) REFERENCES customer (cid),
  FOREIGN KEY (TID) REFERENCES trip (tid)
);
CREATE TABLE driven_by (
  VID int NOT NULL,
  EID int NOT NULL,
  TID int NOT NULL,
  DDATE date DEFAULT NULL,
  PRIMARY KEY (VID,EID,TID),
  FOREIGN KEY (EID) REFERENCES employee (eid),
  FOREIGN KEY (TID) REFERENCES trip (tid),
  FOREIGN KEY (VID) REFERENCES vehicle (vid)
);


select * from customer;
select * from employee;
select * from login;
select * from trip;
select * from vehicle;
select * from payment;
select * from driven_by;


insert into login values('username', 'password');

CREATE TABLE booked_for (
  VID int NOT NULL,
  CID int  NOT NULL,
  TID int NOT NULL,
  BDATE date DEFAULT NULL,
  PRIMARY KEY (VID,CID,TID),
  FOREIGN KEY (CID) REFERENCES customer (cid) ,
   FOREIGN KEY (TID) REFERENCES trip (tid) ,
   FOREIGN KEY (VID) REFERENCES vehicle (vid) 
);

select * from booked_for;