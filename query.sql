create database cars_db;
 
use cars_db;
 
create table user_types
(
    user_type_id int auto_increment primary key,
    type varchar(60) not null
);
 
create table fuel_types
(
    fuel_type_id int auto_increment primary key,
    type varchar(15) not null
);
 
create table transmission_types
(
    transmission_type_id int auto_increment primary key,
    type varchar(15) not null
);
 
create table manufactures
(
    manufacture_id int auto_increment primary key,
    name varchar(50) not null,
    website varchar(100) not null,
    email varchar(256) not null UNIQUE,
    password varchar(200) not null
);
 
create table car_types
(
    car_type_id int auto_increment primary key,
    type varchar(35) not null
);
 
create table status
(
    status_id int auto_increment primary key,
    status varchar(2) not null
);
 
create table states
(
    state_id int auto_increment PRIMARY KEY,
    state varchar(50) not null
);
 
create table cities
(
    city_id int auto_increment PRIMARY KEY,
    city varchar(60) not null,
    state_id int ,
    CONSTRAINT fk_cities_states FOREIGN KEY (state_id) REFERENCES states (state_id)
);
   
 
create table users
(
    user_id int auto_increment PRIMARY key ,
    name VARCHAR(35) not null,
    gender VARCHAR(1) not null,
    email VARCHAR(256) not null UNIQUE,
    password VARCHAR(200) not null,
    contact VARCHAR(10) not null UNIQUE,
    address VARCHAR(300) not null,
    profile_pic VARCHAR(80) not null,
    website_url VARCHAR(256) UNIQUE,
    otp int not null,
    certificate VARCHAR(100),
    status_id int,
    city_id int,
    user_type_id int,
    CONSTRAINT fk_status_users FOREIGN KEY (status_id) REFERENCES status (status_id),
    CONSTRAINT fk_city_users FOREIGN KEY (city_id) REFERENCES cities (city_id),
    CONSTRAINT fk_userType_users FOREIGN KEY (user_type_id) REFERENCES user_types (user_type_id)
);
 
create table car_brands
(
    car_brand_id int auto_increment PRIMARY KEY,
    manufacture_id int not null,
    name VARCHAR(45) not null,
    car_type_id int not null,
    seater int not null,
    engine_cc int not null,
    average int not null,
    launch_date DATE not null,
    CONSTRAINT fk_manufacture_carBrands FOREIGN KEY (manufacture_id) REFERENCES manufactures (manufacture_id),
    CONSTRAINT fk_carTypes_carBrands FOREIGN KEY (car_type_id) REFERENCES car_types (car_type_id)
);
 
create table variants
(
    variant_id int auto_increment PRIMARY KEY,
    car_brand_id int not null,
    fuel_type_id int not null,
    transmission_type_id int not null,
    CONSTRAINT fk_brandId_variants FOREIGN KEY (car_brand_id) REFERENCES car_brands (car_brand_id),
    CONSTRAINT fk_fuelTypeId_variants FOREIGN KEY (fuel_type_id) REFERENCES fuel_types (fuel_type_id),
    CONSTRAINT fk_transmissionTypeId_variants FOREIGN KEY (transmission_type_id) REFERENCES transmission_types (transmission_type_id)
);
 
create table cars
(
    car_id int auto_increment PRIMARY KEY,
    name VARCHAR(40) not NULL,
    vechicle_no int not null,
    variant_id int not null,
    average int not null,
    reg_date date not null,
    km_driven int not null,
    price int not NULL,
    status_id int not null,
    sell_date date not NULL,
    buyer_id int not null,
    seller_id int not null,
    CONSTRAINT fk_variants_cars FOREIGN KEY (variant_id) REFERENCES variants (variant_id),
    CONSTRAINT fk_status_cars FOREIGN KEY (status_id) REFERENCES status (status_id)
);
 
create table car_pics
(
    car_pic_id int auto_increment PRIMARY KEY,
    path VARCHAR(100) not null,
    car_id int not null,
    CONSTRAINT fk_carsId_carPics FOREIGN KEY (car_id) REFERENCES cars (car_id)
);
 
alter table status modify column status varchar(10) not null;

insert into status (status) values ('Active'),('Inactive');

insert into user_types (type) values ('Dealer'),('Indivisual');

alter table cars add column user_id int not null;

alter table cars add FOREIGN KEY(user_id) REFERENCES users(user_id);

alter table cars modify column sell_date date;

alter table manufactures modify column email varchar(256);
alter table manufactures modify column password varchar(200);
alter table manufactures modify column website varchar(100);

insert into manufactures (name) values 
('Mahindra Group'),('Toyota Group'),('Maruti Suzuki Group'),('Honda Group'),('Kia Group'),('Tata Group'),('Ashok Leyland'),('Bajaj Auto'),('Eicher Motors'),('Jeep'),('BMW India'),('Mercedes Benz India'),('MG-Motor'),('Nissan Group'),('Audi'),('Porsche India'),('Volkaswagen India'),('Lexus India'),('Renault'),('Datsun'),('Hyundai');

insert into car_types (type) values 
('Hatchback'),('Sedan'),('MUV'),('SUV'),('Coupe'),('Convertible'),('Wagon'),('Van'),('Jeep');
insert into car_types (type) values 
('sport utility vechicle');

insert into fuel_types (type) values 
('Petrol'),('Diesel'),('CNG'),('Electric');

insert into transmission_types (type) values 
('Manual'),('Automatic'),('IMT');

-- This is use to check the foregin key name
select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    -> WHERE TABLE_NAME = "car_pics";

alter table car_pics
    -> drop foreign key fk_carsId_carPics;

desc cars;

alter table cars add column car_pic_id int not null;

alter table cars add FOREIGN KEY(car_pic_id) REFERENCES car_pics(car_pic_id);

alter table car_brands drop column launch_date; 
alter table car_brands drop column average; 
alter table car_brands drop column name;
alter table cars add COLUMN name varchar(40) not null after car_id; 
alter table cars add COLUMN owner int not null; 
alter table cars modify column vechicle_no varchar(12) not null;

insert into variants (fuel_type_id,transmission_type_id) VALUES 
(10,1),(10,2),(10,3),
(11,1),(11,2),(11,3),
(12,1),(12,2),(12,3),
(13,1),(13,2),(13,3);

alter table car_brands add column modal VARCHAR(40) not null;

insert into car_brands (car_name,manufacture_id,variant_id,car_type_id,seater,engine_cc,model) VALUES 
('scorpio',1,1,4,5,2500,'s11'),
('scorpio',1,2,4,5,2500,'s10'),
('scorpio',1,4,4,5,2500,'s9'),
('scorpio',1,5,4,5,2500,'s5');

insert into car_brands (car_name,manufacture_id,variant_id,car_type_id,seater,engine_cc,model) VALUES 
('thar',1,1,4,4,2200,'4WD'),
('thar',1,2,4,4,2200,'2WD'),
('thar',1,1,4,4,2200,'4WD'),
('thar',1,2,4,4,2200,'2WD'),
('xuv700',1,1,4,5,2200,'MX'),
('xuv700',1,1,4,7,2200,'AX3'),
('xuv700',1,2,4,5,2200,'AX5'),
('xuv700',1,2,4,7,2200,'AX7'),
('xuv700',1,4,4,5,2200,'MX'),
('xuv700',1,4,4,7,2200,'AX3'),
('xuv700',1,5,4,5,2200,'AX5'),
('xuv700',1,5,4,7,2200,'AX7');

insert into car_brands (car_name,manufacture_id,variant_id,car_type_id,seater,engine_cc,model) VALUES 
('fortuner',2,1,4,7,2755,'4WD'),
('fortuner',2,2,4,7,2755,'4WD'),
('fortuner',2,4,4,5,2755,'2WD'),
('fortuner',2,5,4,5,2755,'2WD'),
('innova',2,1,4,7,1987,'2WD'),
('innova',2,2,4,7,1987,'2WD'),
('innova',2,4,4,8,1987,'2WD'),
('innova',2,5,4,8,1987,'2WD'),
('glanza',2,1,1,5,1197,'2WD'),
('glanza',2,2,1,5,1197,'2WD'),
('glanza',2,7,1,5,1197,'2WD'),
('glanza',2,8,1,5,1197,'2WD');

insert into car_brands (car_name,manufacture_id,variant_id,car_type_id,seater,engine_cc,model) VALUES 
('brezza',3,1,10,5,1462,'LXI'),
('brezza',3,2,10,5,1462,'VXI'),
('brezza',3,2,10,5,1462,'ZXI');