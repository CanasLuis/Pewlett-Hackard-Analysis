--Challenge 7
--D1 retirement titles
--retrieve the emp_no,first_name, and last_name columns from the employees table
select emp_no, first_name, last_name
from employees


--Retrieve the title, from_date, and to_date columns from the titles trable
select title, from_date, to_date
from titles

--create a new table using the INTO clause
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date

INTO retirement_titles
FROM employees as e
--Join both tables on the primary key
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
--filter the data on the birth_data column to retrieve the employees who were born between 1952 and 1955.Then, order by the employee number
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Export the retirement titles table from the previous step as retirement_titles.csv and save it to your data folder in the Pewlett-Hackard-Analysis folder


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) emp_no,
					rt.first_name,
					rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;


--Write another query to retrieve the number of employees by theri most recent job title who are about to retire
--Retrieve the number of titles from the unique titles table
SELECT COUNT(ut.title)
FROM unique_titles as ut;

--Create retiring titles table to hold the required information 
--group the table by title, then sort the count column in descending order
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


--D2 Employees eligible for the mentorship program
--Retrieve the emp_no, first_name, last_name, and birth_date columns from the employees table
--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
				   e.first_name,
				   e.last_name,
				   e.birth_date,
--Retrieve the from_date and to_date columns from the department employee table	   
				   de.from_date,
				   de.to_date,
--Retrieve the title column from the titles table
	   				ti.title
					
--Create a new table using the INTO clause.
INTO mentorship_eligibility
FROM employees as e

--Join  tables on the primary key
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)

--filter the data on to_date and the birth_data column to retrieve the employees who were born 1965 
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--Validation
select * from mentorship_eligibility















