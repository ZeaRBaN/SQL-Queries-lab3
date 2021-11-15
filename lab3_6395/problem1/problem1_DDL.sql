CREATE DATABASE company;

CREATE TABLE company.employee
(  
   ssn INT(200) NOT NULL ,
   fname VARCHAR(30) NOT NULL ,
   lname VARCHAR(30) NOT NULL ,
   bdate DATE NOT NULL ,
   address TEXT(100) NOT NULL ,
   gender VARCHAR(20) NOT NULL ,
   salary INT(200) NOT NULL ,
   dno INT(200) NOT NULL ,
   PRIMARY KEY (ssn)
);

CREATE TABLE company.department 
( 
  dnumber INT(200) NOT NULL ,
  dname VARCHAR(30) NOT NULL ,
  mrg_ssn INT(200) NOT NULL ,
  mgr_start_date DATE NOT NULL ,
  PRIMARY KEY (dnumber)
);

CREATE TABLE company.project 
(
  pnumber INT(200) NOT NULL ,
  pname VARCHAR(30) NOT NULL ,
  plocation text(100) NOT NULL ,
  dno INT(200) NOT NULL ,
  PRIMARY KEY (pnumber)
);