/*Query-1: Create a new table called person with columns id, person_name, birth_date, and phone */

-- Format
-- Column Name | Type | Constraints

create table persons (
	id INT not null,
	person_name varchar(50) not null,
	birth_date date,
	phone varchar(15) not null,
	constraint pk_person primary key (id)
)


-- Query-2: Add a new column called email to the person table

alter table persons
add email varchar(50) not null

select * from persons

-- Query-3: Remove the column phone from the person table 
alter table persons
drop column phone

select * from persons


--Query-4: Delete the table person from the database

drop table persons