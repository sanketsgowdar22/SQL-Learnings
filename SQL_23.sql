-- Inserting values into tables in hospital DB
use hospital;

-- Insert values into Country Table
insert into country(country_id,name)
values(1, 'India'),
(2, 'USA'),
(3, 'UK'),
(4, 'Canada'),
(5, 'Australia');

select * from country;

-- Insert values into Bill_Status Table
insert into bill_status(bill_status_id,name) 
values(1, 'Paid'),
(2, 'Pending'),
(3, 'Partially Paid'),
(4, 'Cancelled'),
(5, 'Overdue');

select * from bill_status;

-- Insert values into Payment_Method Table
insert into payment_method(payment_method_id,name) 
values(1, 'Cash'),
(2, 'Credit Card'),
(3, 'Debit Card'),
(4, 'UPI'),
(5, 'Net Banking');

select * from payment_method;

-- Insert values into Gender Table
insert into gender(gender_id,name) 
values(1, 'Male'),
(2, 'Female'),
(3, 'Other');

select * from gender;

-- Insert values into Appointment_Status Table
insert into appointment_status (status_id,name)
values(1, 'Scheduled'),
(2, 'Completed'),
(3, 'Cancelled'),
(4, 'Rescheduled'),
(5, 'No Show');

select * from appointment_status;

-- Insert values into Patient Table
insert into patient (patient_id,first_name,last_name,gender_id,date_of_birth,phone_number,email_address,address_line1,address_line2,state,country_id,created_at)
values(101,'Rahul','Sharma',1,'1998-05-12',9876543210,'rahul@gmail.com','MG Road','Near Bus Stand','Karnataka',1,'2026-01-10'),
(102,'Priya','Patil',2,'2000-08-20',9876543211,'priya@gmail.com','Jayanagar','Near Metro Station','Karnataka',1,'2026-01-12'),
(103,'Amit','Kumar',1,'1995-03-15',9876543212,'amit@gmail.com','Indiranagar','2nd Cross','Karnataka',1,'2026-01-15'),
(104,'Sneha','Rao',2,'1999-11-25',9876543213,'sneha@gmail.com','Rajajinagar','Near Park','Karnataka',1,'2026-01-18'),
(105,'Arjun','Mehta',1,'1992-07-08',9876543214,'arjun@gmail.com','Whitefield','ITPL Road','Karnataka',1,'2026-01-20');

select * from patient;

-- Insert values into Doctor Table
insert into doctor (doctor_id,first_name,last_name,gender_id,created_at)
values(201, 'Ramesh', 'Shetty', 1, '2025-12-01'),
(202, 'Ananya', 'Reddy', 2, '2025-12-05'),
(203, 'Kiran', 'Desai', 1, '2025-12-10'),
(204, 'Meera', 'Nair', 2, '2025-12-15'),
(205, 'Vikram', 'Joshi', 1, '2025-12-20');

select * from doctor;

-- Insert values into Appointment Table
insert into appointment (appointment_id,patient_id,doctor_id,appointment_datetime,status_id,reason,created_at)
values(301,101,201,'2026-02-01',2,'Fever and headache','2026-01-25'),
(302,102,202,'2026-02-02',2,'Regular health checkup','2026-01-26'),
(303,103,203,'2026-02-03',1,'Chest pain','2026-01-27'),
(304,104,204,'2026-02-04',2,'Skin allergy','2026-01-28'),
(305,105,205,'2026-02-05',1,'Back pain','2026-01-29');

select * from appointment;

-- Insert values into Patient_Bill Table
insert into patient_bill (bill_id,appointment_id,amount,bill_status_id,payment_method_id,created_at,bill_paid_datetime)
values(401,301,1500.00,1,4,'2026-02-01','2026-02-01'),
(402,302,2000.00,1, 2,'2026-02-02','2026-02-02'),
(403,303,3500.00,2, 1,'2026-02-03',NULL),
(404,304,1200.00,1, 3,'2026-02-04','2026-02-04'),
(405,305,2500.00,2, 4,'2026-02-05',NULL);

select * from patient_bill;

-- Insert values into Specialisation Table
insert into specialisation (specialisation_id,name)
values(1,'Cardiology'),
(2,'Dermatology'),
(3,'Neurology'),
(4,'Orthopedics'),
(5,'General Medicine');

select * from specialisation;

-- Insert values into doctor_specialisation Table
insert into doctor_specialisation (doctor_id,specialisation_id)
values(201,5),
(202,1),
(203,3),
(204,2),
(205,4);

select * from doctor_specialisation;

-- Insert values Appointment_Note Table
insert into appointment_note (note_id,appointment_id,notes,created_at,created_by)
values(501,301,'Patient has mild fever. Prescribed medication.','2026-02-01',201),
(502,302,'Routine health checkup completed. Patient is healthy.','2026-02-02',202),
(503,303,'Patient reported chest pain. Further tests recommended.','2026-02-03',203),
(504,304,'Skin allergy diagnosed. Medication prescribed.','2026-02-04',204),
(505,305,'Patient has lower back pain. Advised physiotherapy.','2026-02-05',205);

select * from appointment_note;

-- Insert values into Prescription Table
insert into prescription (prescription_id,appointment_id,medicine_name,dosage,frequency,instructions,created_at,created_by)
values
(601,301,'Paracetamol',500.00,2,'Take after food','2026-02-01',201),
(602,302,'Vitamin D',1000.00,1,'Take once daily','2026-02-02',202),
(603,303,'Aspirin',75.00,1,'Take after consultation','2026-02-03',203),
(604,304,'Cetirizine',10.00,1,'Take at night','2026-02-04',204),
(605,305,'Ibuprofen',200.00,2,'Take after food','2026-02-05',205);

select * from prescription;
