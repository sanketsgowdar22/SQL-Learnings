-- Create new hospital database
create database hospital;

use hospital;

-- Create a table country
create table country(
country_id int primary key,
name varchar(30)
);

desc country;

-- Create a table bill_status
create table bill_status(
bill_status_id int primary key,
name varchar(30)
);

desc bill_status;

-- Create a table payment_method
create table payment_method(
payment_method_id int primary key,
name varchar(30)
);

desc payment_method;

-- Create a table gender
create table gender(
gender_id int primary key,
name varchar(30)
);

desc gender;

-- Create a table appointment_status
create table appointment_status(
status_id int primary key,
name varchar(30)
);

desc appointment_status;

-- Create a table patient
create table patient(
patient_id int primary key,
first_name varchar(50),
last_name varchar(50),
gender_id int,
foreign key (gender_id)
references gender(gender_id),
date_of_birth date,
phone_number decimal(10,2),
email_address varchar(50),
address_line1 varchar(100),
address_line2 varchar(100),
state varchar(20),
country_id int,
foreign key (country_id)
references country(country_id),
created_at date
);

desc patient;

-- Create a table doctor
create table doctor(
doctor_id int primary key,
first_name varchar(50),
last_name varchar(50),
gender_id int,
foreign key (gender_id) 
references gender(gender_id),
created_at date
);

desc doctor;

-- Create a table appointment
create table appointment(
appointment_id int primary key,
patient_id int,
foreign key (patient_id)
references patient(patient_id),
doctor_id int,
foreign key (doctor_id)
references doctor(doctor_id),
appointment_datetime date,
status_id int,
foreign key (status_id)
references appointment_status(status_id),
reason varchar(200),
created_at date
);

desc appointment;

-- Create a table patient_bill
create table patient_bill(
bill_id int primary key,
appointment_id int,
foreign key (appointment_id)
references appointment(appointment_id),
amount decimal(10,2),
bill_status_id int,
foreign key (bill_status_id)
references bill_status(bill_status_id),
payment_method_id int,
foreign key (payment_method_id)
references payment_method(payment_method_id),
created_at date,
bill_paid_datetime date
);

desc patient_bill;

-- Create a table specialisation
create table specialisation(
specialisation_id int primary key,
name varchar(30)
);

desc specialisation;

-- Create a table doctor_specialisation
create table doctor_specialisation(
doctor_id int,
foreign key (doctor_id) 
references doctor(doctor_id),
specialisation_id int,
foreign key (specialisation_id) 
references specialisation(specialisation_id)
);

desc doctor_specialisation;

-- Create a table appointment_note
create table appointment_note(
note_id int primary key,
appointment_id int,
foreign key (appointment_id)
references appointment(appointment_id),
notes varchar(500),
created_at date,
created_by int,
foreign key (created_by)
references doctor(doctor_id)
);

desc appointment_note;

-- Create a table prescription
create table prescription(
prescription_id int primary key,
appointment_id int,
foreign key (appointment_id)
references appointment(appointment_id),
medicine_name varchar(50),
dosage decimal(10,2),
frequency int,
instructions varchar(300),
created_at date,
created_by int,
foreign key (created_by)
references doctor(doctor_id)
);

desc prescription;