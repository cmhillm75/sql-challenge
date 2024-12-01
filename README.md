# Module 9 SQL sql-challenge 

* Used the Quick DBD website to create the table schema and define the keys.
<https://app.quickdatabasediagrams.com/#/d/pkEoA1>

* In the EmployeeSQL folder Saved a copy of the ERD data model as png and copies of the SQL source files
for table creation which is the data engineering step and a copy of the data queries for the 8
different data queries requested, the data analysis.

* Updated the format to SQL and added the view commands and removed the "" on titles, constraints
and primary keys. After all 6 tables were created loaded in the CSV files from the data folder.
When making the PK and FK and establishing the constraints, needed to load in the employees CSV
prior to the dept_emp due to foreign key error.

* Determining the Primary Keys
departments: dept_no
dept_emp: Composite key of emp_no and dept_no (both PK)
dept_manager: Composite key of dept_no and emp_no (both PK)
employees: emp_no
salaries: emp_no
titles: title_id

* Determining Foreign Keys
dept_emp:
emp_no reference employees.emp_no
dept_no reference departments.dept_no

dept_manager:
dept_no reference departments.dept_no
emp_no reference employees.emp_no

salaries:
emp_no reference employees.emp_no

* Data Analysis saved each query question to one query named data_analysis
in the EmployeeSQL folder.
