DROP TABLE IF EXISTS "departments";
DROP TABLE IF EXISTS "dept_emp";
DROP TABLE IF EXISTS "dept_manager";
DROP TABLE IF EXISTS "employees";
DROP TABLE IF EXISTS "salaries";
DROP TABLE IF EXISTS "titles";


CREATE TABLE "departments"(
	"dept_no" VARCHAR(10) PRIMARY KEY,
	"dept_name" VARCHAR(30) NOT NULL
);

CREATE TABLE "employees"(
	"emp_no" INTEGER PRIMARY KEY,
	"emp_title" VARCHAR(20) NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR(30) NOT NULL,
	"last_name" VARCHAR(30) NOT NULL,
	"sex" CHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	FOREIGN KEY ("emp_title") REFERENCES "titles"("title_id")
);

CREATE TABLE "dept_emp"(
	"emp_no" INTEGER NOT NULL,
	"dept_no" VARCHAR(10) NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no")
);

CREATE TABLE "dept_manager"(
	"dept_no" VARCHAR(10) NOT NULL,
	"emp_no" INTEGER NOT NULL,
	FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);

CREATE TABLE "titles"(
	"title_id" VARCHAR(20) PRIMARY KEY,
	"title" VARCHAR(30) NOT NULL
);

CREATE TABLE "salaries"(
	"emp_no" INTEGER NOT NULL,
	"salary" INTEGER NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);

SELECT * FROM "departments"
SELECT * FROM "employees"
SELECT * FROM "dept_emp"
SELECT * FROM "dept_manager"
SELECT * FROM "titles"
SELECT * FROM "salaries"