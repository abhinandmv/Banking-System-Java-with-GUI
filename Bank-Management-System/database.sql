CREATE DATABASE IF NOT EXISTS bankSystem;
USE bankSystem;

CREATE TABLE IF NOT EXISTS signup (
    formno VARCHAR(20) PRIMARY KEY,
    name VARCHAR(50),
    fname VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    marital VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(50),
    pincode VARCHAR(10),
    state VARCHAR(50)
);
CREATE TABLE SignupDetails (
    form_number VARCHAR(20) PRIMARY KEY,
    pan_number VARCHAR(20),
    aadhar_number VARCHAR(20),
    combo_box1_selection VARCHAR(50),
    combo_box2_selection VARCHAR(50),
    combo_box3_selection VARCHAR(50),
    combo_box4_selection VARCHAR(50),
    combo_box5_selection VARCHAR(50),
    radio_button1_selection BOOLEAN,
    radio_button2_selection BOOLEAN,
    radio_button3_selection BOOLEAN,
    radio_button4_selection BOOLEAN
);
CREATE TABLE AccountDetails (
    form_number VARCHAR(20) PRIMARY KEY,
    account_type VARCHAR(50),
    facility_cheque_book BOOLEAN,
    facility_internet_banking BOOLEAN,
    facility_mobile_banking BOOLEAN,
    facility_email_alerts BOOLEAN,
    facility_e_statement BOOLEAN,
    facility_atm_card BOOLEAN
);
CREATE TABLE Withdrawals (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_pin VARCHAR(20) NOT NULL,
    withdrawal_amount DECIMAL(10, 2) NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_pin) REFERENCES Accounts(pin)
);
 
