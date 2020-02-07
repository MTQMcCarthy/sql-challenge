-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "emp_number" integer   NOT NULL,
    "DOB" data   NOT NULL,
    "f_name" varchar   NOT NULL,
    "l_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    "title_id" integer   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_number"
     )
);

CREATE TABLE "Department" (
    "dept_number" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    "dept_mgr_id" integer   NOT NULL,
    "dept_start_dt" date   NOT NULL,
    "dept_end_dt" date   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_number"
     )
);

CREATE TABLE "Salary" (
    "sal_id" integer   NOT NULL,
    "emp_number" integer   NOT NULL,
    "salary" decimal   NOT NULL,
    "sal_from_date" date   NOT NULL,
    "sal_to_date" date   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "sal_id"
     )
);

CREATE TABLE "Department_Manager" (
    "mgr_id" integer   NOT NULL,
    "dept_number" varchar   NOT NULL,
    "emp_number" integer   NOT NULL,
    "mgr_from_dt" date   NOT NULL,
    "mgr_to_date" date   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "mgr_id"
     )
);

CREATE TABLE "Title" (
    "title_id" integer   NOT NULL,
    "emp_id" integer   NOT NULL,
    "title" varchar   NOT NULL,
    "title_from_dt" date   NOT NULL,
    "title_to_dt" date   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "Department_Employee" (
    "dept_emp_id" integer   NOT NULL,
    "dept_number" varchar   NOT NULL,
    "dept_emp_from_dt" date   NOT NULL,
    "dept_emp_to_date" date   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "dept_emp_id"
     )
);

ALTER TABLE "Department" ADD CONSTRAINT "fk_Department_dept_mgr_id" FOREIGN KEY("dept_mgr_id")
REFERENCES "Department_Manager" ("mgr_id");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_emp_number" FOREIGN KEY("emp_number")
REFERENCES "Employee" ("emp_number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_dept_number" FOREIGN KEY("dept_number")
REFERENCES "Department" ("dept_number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_emp_number" FOREIGN KEY("emp_number")
REFERENCES "Employee" ("emp_number");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employee" ("emp_number");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_dept_emp_id" FOREIGN KEY("dept_emp_id")
REFERENCES "Employee" ("emp_number");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_dept_number" FOREIGN KEY("dept_number")
REFERENCES "Department" ("dept_number");

