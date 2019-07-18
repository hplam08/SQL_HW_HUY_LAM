-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/imjGCA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Department_Employee" (
    "emp_no" int   NOT NULL,
    "dept_no" int   NOT NULL,
    "from_date" varchar(255)   NOT NULL,
    "to_date" varchar(255)   NOT NULL
);

CREATE TABLE "Department" (
    "dept_no" int   NOT NULL,
    "dept_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Manager" (
    "emp_no" int   NOT NULL,
    "dept_no" int   NOT NULL,
    "from_date" varchar(255)   NOT NULL,
    "to_date" varchar(255)   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "gender" varchar(255)   NOT NULL,
    "hire_date" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" varchar(255)   NOT NULL,
    "to_date" varchar(255)   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(255)   NOT NULL,
    "from_date" varchar(255)   NOT NULL,
    "to_date" varchar(255)   NOT NULL
);

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_name");

ALTER TABLE "Department" ADD CONSTRAINT "fk_Department_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department_Manager" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Titles" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

