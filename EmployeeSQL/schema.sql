CREATE TABLE Employee (
    "emp_number" integer   NOT NULL,
    "DOB" date   NOT NULL,
    "f_name" varchar   NOT NULL,
    "l_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_dt" date   NOT NULL,
    "title_id" integer      
);

copy Employee from 'C:\Data\Employee.csv'
with (format CSV, HEADER);

CREATE TABLE Department (
    dept_number varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        dept_number
     )
);

copy Department from 'C:\Data\Department.csv'
with (format CSV, HEADER);

CREATE TABLE Salary (
    emp_number integer   NOT NULL,
    salary decimal   NOT NULL,
    sal_from_dt date   NOT NULL,
    sal_to_dt date   NOT NULL,
    CONSTRAINT pk_Salary PRIMARY KEY (
        emp_number
     )
);

copy Salary from 'C:\Data\Salary.csv'
with (format CSV, HEADER);

CREATE TABLE Department_Manager (
    dept_number varchar   NOT NULL,
    emp_number integer   NOT NULL,
    mgr_from_dt date   NOT NULL,
    mgr_to_dt date   NOT NULL
);

copy Department_Manager from 'C:\Data\Department_Manager.csv'
with (format CSV, HEADER);

CREATE TABLE Title (
    emp_number integer   NOT NULL,
    title varchar   NOT NULL,
    title_from_dt date   NOT NULL,
    title_to_dt date   NOT NULL
);

copy TItle from 'C:\Data\Title.csv'
with (format CSV, HEADER);

CREATE TABLE Department_Employee (
    dept_emp_number integer   NOT NULL,
    dept_number varchar   NOT NULL,
    dept_emp_from_dt date   NOT NULL,
    dept_emp_to_dt date   NOT NULL
);

copy Department_Employee from 'C:\Data\Department_Employee.csv'
with (format CSV, HEADER);