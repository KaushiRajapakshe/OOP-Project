CREATE DATABASE bluline

CREATE TABLE registration (
  name varchar(20) NOT NULL,
  nic varchar(20) PRIMARY KEY,
  gender varchar(40) NOT NULL,
  address varchar(20) NOT NULL,
  mem_type varchar(30) NOT NULL,
  blood_group varchar(40) NOT NULL,
  status varchar(40) NOT NULL,
  dob varchar(20) NOT NULL,
  email varchar(20) NOT NULL,
  mobile varchar(20) NOT NULL,
  password varchar(20) NOT NULL
);
CREATE TABLE appointment(
	id varchar(20) PRIMARY KEY,
	nic varchar(10),
	docName varchar(40) NOT NULL,
	specialization varchar(40) NOT NULL,
	hospital varchar(40) NOT NULL,
	date varchar(20) NOT NULL
);
CREATE TABLE payment (
  id varchar(20) PRIMARY KEY,
  nic varchar(30) NOT NULL,
  payment int(11) NOT NULL,
  cardNum varchar(20) DEFAULT NULL,
  exDate varchar(30) DEFAULT NULL,
  secuCode varchar(7) DEFAULT NULL,
  firstName varchar(30) DEFAULT NULL,
  lastName varchar(30) DEFAULT NULL
);
CREATE TABLE doctor (
  Doctor_ID varchar(8) PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Status varchar(5) NOT NULL,
  Email varchar(60) NOT NULL,
  NIC_Number varchar(10) DEFAULT NULL,
  Telephone_Number int(10) NOT NULL,
  Password varchar(8) NOT NULL,
  MC_Registration_Number int(5) DEFAULT NULL,
  Qualification varchar(100) NOT NULL DEFAULT 'MBBS',
  Specialization varchar(50) NOT NULL,
  Working_experience int(2) NOT NULL
);
CREATE TABLE admin (
  id varchar(20) PRIMARY KEY,
  password varchar(20) NOT NULL
);
CREATE TABLE patienthistory (
  patientHistoryID int(50) PRIMARY KEY,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  gender varchar(50) NOT NULL,
  age varchar(50) NOT NULL,
  bloodtype varchar(50) NOT NULL,
  allergies varchar(50) NOT NULL,
  treatmentdetails varchar(50) NOT NULL,
  surgerydetails varchar(50) NOT NULL
);
CREATE TABLE contactus (
  contactID int(50) PRIMARY KEY,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  country varchar(20) NOT NULL,
  subject varchar(50) NOT NULL
);

INSERT INTO registration (name, nic, gender, address, mem_type, blood_group, status, dob, email, mobile, password) VALUES ('pulasthi', '973573586V', 'male', 'malabe', 'Patient', 'A+', 'Single', '1997-12-22', 'pulasthi@gmail.com', '0767488285', 'qwq');
INSERT INTO registration (name, nic, gender, address, mem_type, blood_group, status, dob, email, mobile, password) VALUES ('kaushi', '958463685V', 'female', 'gampaha', 'Patient', 'O-', 'Single', '1995-12-11', 'kaushi@gmail.com', '0777425678', '123');
INSERT INTO registration (name, nic, gender, address, mem_type, blood_group, status, dob, email, mobile, password) VALUES ('himashi', '95003586V', 'female', 'monaragala', 'Patient', 'B+', 'Single', '1995-05-12', 'himashi@gmail.com', '0712343678', 'aad');
INSERT INTO registration (name, nic, gender, address, mem_type, blood_group, status, dob, email, mobile, password) VALUES ('suren', '974470586V', 'male', 'colombo', 'Patient', 'AB+', 'Single', '1997-05-12', 'suren@gmail.com', '0760000285', '12*');

INSERT INTO appointment (id, nic, docName, specialization, hospital, date) VALUES ('1001', '958463685V', 'Kaushi Rajapakshe','Allergy And Asthma Specialist','Arogya Hospital - Gampaha','2018-05-05');
INSERT INTO appointment (id, nic, docName, specialization, hospital, date) VALUES ('1002', '973573586V','Lithoni Stella','Neuro Surgeono','Nawaloka Hospital - Colombo','2018-05-15'));
INSERT INTO appointment (id, nic, docName, specialization, hospital, date) VALUES ('1003', '95003586V','Nithin Shakya','Children Dentist','Asiri Central Hospital - Colombo 5','2018-06-05');
INSERT INTO appointment (id, nic, docName, specialization, hospital, date) VALUES ('1004', '974470586V','Ushani Hansika','Counselling','Dental Service - Colombo 5','2018-05-25');

INSERT INTO payment (id, nic, payment, cardNum, exDate, secuCode, firstName, lastName) VALUES ('1001', '958463685V', 3300, '8564789012345678', '2020-05-15', '1234', 'Pawan ', 'Amarasinghe');
INSERT INTO payment (id, nic, payment, cardNum, exDate, secuCode, firstName, lastName) VALUES ('1002', '973573586V', 3050, '8564700002345678', '2021-05-30', '5678', 'Kelum ','Sandaruwan');
INSERT INTO payment (id, nic, payment, cardNum, exDate, secuCode, firstName, lastName) VALUES ('1003', '95003586V', 3150, '8561119012345678', '2019-12-10', '9900', 'Sahas ','Kaushalya');
INSERT INTO payment (id, nic, payment, cardNum, exDate, secuCode, firstName, lastName) VALUES ('1004', '974470586V', 2800, '8564789012777678', '2021-01-05', '1233', 'Nisal ','Hewage');

INSERT INTO doctor (Doctor_ID, Name, Status, Email, NIC_Number, Telephone_Number, Password, MC_Registration_Number, Qualification, Specialization, Working_experience) VALUES ('DID001','Nithin Shakya','Mr.','shakya@gmail.com','869468708v',0711459765,'rs01f',9651,'MBBS','Family medicine ',2);
INSERT INTO doctor (Doctor_ID, Name, Status, Email, NIC_Number, Telephone_Number, Password, MC_Registration_Number, Qualification, Specialization, Working_experience) VALUES ('DID002','Ushani Hansika','Mrs.','hansika@gmail.com','847485416v',0722764983,'da02ai',9486,'MBBS & PHD','Allergist-Immunologist ',4);
INSERT INTO doctor (Doctor_ID, Name, Status, Email, NIC_Number, Telephone_Number, Password, MC_Registration_Number, Qualification, Specialization, Working_experience) VALUES ('DID003','Lithoni Stella','Mr.','lithoni@gmail.com','839768759v',0773648514,'ss03cr',9156,'MBBS & MB',' Cardiologist ',5);
INSERT INTO doctor (Doctor_ID, Name, Status, Email, NIC_Number, Telephone_Number, Password, MC_Registration_Number, Qualification, Specialization, Working_experience) VALUES ('DID004','Kaushi Rajapakshe','Miss.','kaush@gmail.com','856123408v',0714784965,'ld04ent',9645,'MBBS & MB','Ear, Nose, and Throat (ENT)',3);

INSERT INTO admin (id, password) VALUES ('kaushi', 'kaushi');
INSERT INTO admin (id, password) VALUES ('himashi', 'himashi');
INSERT INTO admin (id, password) VALUES ('pulasthi', 'pulasthi');
INSERT INTO admin (id, password) VALUES ('suren', 'suren');

INSERT INTO contactus (contactID, firstname, lastname, email, country, subject) VALUES (1, 'kaushi', 'rajapakshe', 'kaushi1gmail.com', 'Sri lanka', 'Add a subject..');
INSERT INTO contactus (contactID, firstname, lastname, email, country, subject) VALUES (2, 'suren', 'vithanage', 'suren1gmail.com', 'Sri lanka', 'Add a subject..');
INSERT INTO contactus (contactID, firstname, lastname, email, country, subject) VALUES (3, 'pulasthi', 'shamil', 'pulasthi1gmail.com', 'Sri lanka', 'Add a subject..');
INSERT INTO contactus (contactID, firstname, lastname, email, country, subject) VALUES (4, 'himashi', 'rathnayake', 'himashi1gmail.com', 'Sri lanka', 'Add a subject..');

INSERT INTO patienthistory (patientHistoryID, firstname, lastname, gender, age, bloodtype, allergies, treatmentdetails, surgerydetails) VALUES (121, 'sahas', 'niwarthana', 'male', '31', 'O+', 'milk', 'something1', 'something1');
INSERT INTO patienthistory (patientHistoryID, firstname, lastname, gender, age, bloodtype, allergies, treatmentdetails, surgerydetails) VALUES (122, 'kavindu', 'jayakodi', 'male', '45', 'A+', 'food', 'something2', 'something2');
INSERT INTO patienthistory (patientHistoryID, firstname, lastname, gender, age, bloodtype, allergies, treatmentdetails, surgerydetails) VALUES (123, 'shashi', 'bagya', 'female', '23', 'B-', 'choco', 'something3', 'something3');
INSERT INTO patienthistory (patientHistoryID, firstname, lastname, gender, age, bloodtype, allergies, treatmentdetails, surgerydetails) VALUES (124, 'piyumi', 'nihali', 'female', '18', 'AB+', 'banana', 'something4', 'something4');