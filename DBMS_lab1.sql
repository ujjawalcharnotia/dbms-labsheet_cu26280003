create database Labsheet1;
use Labsheet1;
 create table department(
dept_id int primary key,
dept_name varchar(50)
);



create table employee(
emp_id int primary key,
first_name varchar(30),
salary decimal(10,2)
);

create table project(
project_id int primary key,
project_name varchar(100),
start_date date
);

create table audit_logs(
login_id int primary key,
action text,
created_at timestamp);

CREATE TABLE products(
product_id int primary key,
product_name varchar(50),
is_avaliable boolean);


create table system_setting(
setting_id smallint primary key,
setting_key varchar(50),
setting_value varchar(100)
);

alter table employee
add column email varchar(100);

alter table products
drop column is_available;

rename table department to
dept_units;

truncate table audit_logs;

create table user_profiles(
user_id int primary key,
bio text,
profile_pic blob);

create table ticket_orders(
ticket_id int primary key,
priority_level enum('low','medium','high')
);

drop table products;

alter table employee
modify email varchar(150);

create table sensor_data(
read_id bigint primary key,
temperature  float);

ALTER TABLE employees
RENAME COLUMN first_name TO given_name;


ALTER TABLE system_settings
DROP PRIMARY KEY;


CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    registration_time TIME
);


ALTER TABLE clients
ADD PRIMARY KEY (client_id);

create table order_items (
    order_id int,
    item_id int,
    quantity int,
    unit_price decimal(8,2),
    primary key (order_id, item_id)
);


create table event_schedules (
    event_id int,
    venue_id int,
    event_date date,
    duration_hours tinyint,
    primary key (event_id, venue_id)
);


alter table employees
add hire_date date,
add is_active boolean;


alter table employees
drop column email,
modify salary decimal(12,2);


alter table inventory
add primary key (warehouse_id, sku);


alter table user_profiles
modify bio mediumtext;


alter table employees
add column middle_name varchar(30) after given_name;


create table geolocations (
    location_id int primary key,
    latitude decimal(9,6),
    longitude decimal(9,6)
);


create table user_accounts (
    user_id bigint primary key,
    account_type enum('Standard','Premium','Admin'),
    created_timestamp timestamp
);


create table device_logs (
    log_id bigint primary key,
    ip_address varchar(45),
    payload longblob
);


alter table order_items
drop primary key,
add column order_item_id int first,
add primary key (order_item_id);


alter table projects
change start_date project_year year;


create table document_store (
    doc_id int primary key,
    doc_title varchar(255),
    content longtext
);


alter table document_store
change content doc_body longtext;


create table employees_archive
like employees;


drop table if exists employees_archive;


create table financial_ledger (
    entry_id bigint primary key,
    debit decimal(15,4),
    credit decimal(15,4)
);


alter table financial_ledger
add column transaction_date datetime first;


create table measurements (
    sample_id int primary key,
    value double
);


create table app_users (
    user_id int primary key,
    status_code tinyint
);


create table transactions (
    xact_id bigint primary key,
    user_id int,
    amount decimal(10,2),
    channel enum('Web','Mobile','ATM'),
    status varchar(20),
    xact_time timestamp
);


create table system_events (
    event_id bigint,
    node_id smallint,
    event_payload text,
    logged_time timestamp,
    primary key (event_id, node_id)
);


alter table clients
drop primary key,
add column region_code char(3),
add primary key (client_id, region_code);


alter table raw_data
change column temp_val converted_val decimal(6,3),
add column processed_at timestamp after converted_val;


create table student_enrollments (
    student_id int,
    course_id int,
    semester varchar(10),
    enrollment_date date,
    primary key (student_id, course_id, semester)
);


alter table student_enrollments
drop primary key,
add column enrollment_id bigint first,
add primary key (enrollment_id);


create table file_metadata (
    file_id int primary key,
    file_path varchar(500),
    file_size_bytes bigint,
    checksum char(64)
);


alter table file_metadata
modify column file_id bigint,
modify column file_path text,
drop column checksum;


-- (1) Create the table with composite PK
create table sensor_readings (
    sensor_id int,
    recorded_at timestamp,
    reading float,
    primary key (sensor_id, recorded_at)
);

-- (2) Rename the table
rename table sensor_readings to historical_sensor_readings;


-- (1) Create the table
create table application_logs (
    log_id bigint primary key,
    level enum('DEBUG','INFO','WARN','ERROR'),
    message text,
    execution_time double,
    created_at datetime
);

-- (2) Modify the level column
alter table application_logs
modify column level varchar(10);






