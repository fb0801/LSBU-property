CREATE TABLE Employee(
EmpID int not null,
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNum varchar(20) not null,
Email varchar(30) not null,
title varchar(30) not null,
constraint Employee_PK primary key (EmpID)
);


CREATE TABLE buyer(
buyerID int not null,
Firstname varchar(50),
Lastname varchar(50),
Email varchar(40),
constraint buyer_PK primary key (buyerID)
);

CREATE TABLE Auction(
auctID int not null,
EmpID int not null,
companyname varchar(50),
auctiondate date,
auct_location varchar(40),
pricepaid numeric(15,2),
constraint auct_pk primary key(auctID),
constraint auct_empID_fk foreign key(EmpID) references Employee(EmpID)
);

CREATE TABLE Property(
propID int not null,
auctID int not null,
prop_address varchar(50),
postcode varchar(30),
prop_description varchar(100),
price numeric(15,2) not null,
prop_type varchar(50),
purchasedate Date,
prop_status varchar(20),
constraint prop_pk primary key(propID),
constraint prop_auct_fk foreign key(auctID) references Auction(auctID)
);



CREATE TABLE contract(
contractID int not null,
EmpID int not null,
buyerID int not null,
propID int not null,
payment numeric(15,2),
contractdate date,
status varchar(40),
constraint con_pk primary key (contractID),
constraint con_empID_fk foreign key(EmpID) references Employee(EmpID),
constraint con_proID_fk foreign key(propID) references Property(propID)
);

CREATE TABLE certificate(
certID int not null,
EmpID int,
propID int,
certdate date,
signeddate date,
constraint cert_pk primary key(certID),
constraint cert_empID_fk foreign key(EmpID) references Employee(EmpID),
constraint cert_propID_fk foreign key(propID) references Property(propID)
);

CREATE TABLE property_repair(
repID int not null,
EmpID int,
propID int,
cost numeric(15,2),
duration varchar(40),
reason varchar(120),
prop_time varchar(20),
prop_status varchar(30),
constraint prop_rep_pk primary key(repID),
constraint prop_rep_empID_fk foreign key(EmpID) references Employee(EmpID),
constraint prop_rep_propID_fk foreign key (propID) references Property(propID)
);

CREATE TABLE web_catalog(
webcatID int not null,
propID int,
saleprice numeric(15,2),
constraint web_catalog_pk primary key(webcatID),
constraint web_catalog_propID_fk foreign key(propID) references Property(propID)
);

CREATE TABLE skill_worker(
swID int not null,
FirstName varchar(50),
LastName varchar(50),
speciality varchar(60),
phonenum varchar(30),
email varchar(100),
work_status varchar(20),
constraint skill_worker_pk primary key(swID)
);

CREATE TABLE job(
jobID int not null,
propID int,
swID int,
outcome varchar(30),
job_month date,
constraint job_pk primary key(jobID),
constraint job_propID_fk foreign key(propID) references Property(propID),
constraint job_swID_fk foreign key(swID) references skill_worker(swID)
);