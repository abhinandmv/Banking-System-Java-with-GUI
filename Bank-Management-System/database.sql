CREATE DATABASE IF NOT EXISTS bankSystem;
USE bankSystem;
CREATE TABLE signup (
    formno VARCHAR(20) PRIMARY KEY,
    name VARCHAR(50),
    fname VARCHAR(50),
    dob varchar(30),
    gender VARCHAR(10),
    email VARCHAR(100),
    marital VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(50),
    pincode VARCHAR(10),
    state VARCHAR(50)
);
CREATE TABLE signuptwo (
    formno VARCHAR(50) PRIMARY KEY,
    religion VARCHAR(50),
    category VARCHAR(50),
    income varchar(30),
    education VARCHAR(50),
    occupation VARCHAR(100),
    pan VARCHAR(50),
    addhar VARCHAR(255),
    seniorcitizen VARCHAR(50),
    existing_account VARCHAR(10)
);
CREATE TABLE signupthree (
    formno VARCHAR(50) PRIMARY KEY,
	account_type VARCHAR(50),
    card_number VARCHAR(50),
    pin varchar(30),
    facility VARCHAR(200)
);
create TABLE LOGIN( form_no varchar(30), card_number varchar(50), pin varchar(30));
create table bank (pin varchar(10) , date varchar(30),type varchar(30) , amount varchar(20)); 
