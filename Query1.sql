-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-02 07:02:45.436

-- tables
-- Table: Appointment
CREATE DATABASE Hospital;
USE Hospital;
CREATE TABLE Appointment (
    Appointment_ID int NOT NULL,
    Doctor_ID int NOT NULL,
    Patient_ID int NOT NULL,
    Date date NOT NULL,
    CONSTRAINT Appointment_pk PRIMARY KEY (Appointment_ID)
);

-- Table: Bill
CREATE TABLE Bill (
    Bill_ID int NOT NULL,
    CustomerName varchar(100) NOT NULL,
    TotalAmount float NOT NULL,
    CONSTRAINT Bill_pk PRIMARY KEY (Bill_ID)
);

-- Table: Doctor
CREATE TABLE Doctor (
    Doctor_ID int NOT NULL,
    Name varchar(100) NOT NULL,
    Address varchar(100) NOT NULL,
    YearsExperience int NOT NULL,
    CONSTRAINT Doctor_pk PRIMARY KEY (Doctor_ID)
);

-- Table: Patient
CREATE TABLE Patient (
    Patient_ID int NOT NULL,
    Name varchar(100) NOT NULL,
    Address varchar(100) NOT NULL,
    PhoneNumber int NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY (Patient_ID)
);

-- Table: Payment
CREATE TABLE Payment (
    Payment_ID int NOT NULL,
    Bill_ID int NOT NULL,
    Method varchar(100) NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_ID)
);

-- foreign keys
-- Reference: Appointment_Doctor (table: Appointment)
ALTER TABLE Appointment ADD CONSTRAINT Appointment_Doctor FOREIGN KEY Appointment_Doctor (Doctor_ID)
    REFERENCES Doctor (Doctor_ID);

-- Reference: Appointment_Patient (table: Appointment)
ALTER TABLE Appointment ADD CONSTRAINT Appointment_Patient FOREIGN KEY Appointment_Patient (Patient_ID)
    REFERENCES Patient (Patient_ID);

-- Reference: Payment_Bill (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Bill FOREIGN KEY Payment_Bill (Bill_ID)
    REFERENCES Bill (Bill_ID);

-- End of file.

