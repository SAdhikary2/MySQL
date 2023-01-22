### MYSQL VIEWS
/*
In SQL, the view is a virtual table based on the result-set of an SQL statement.  A view holds rows and columns, similar to a real table.
 The fields in a view are fields from one or more real tables in the database. 
 You can add SQL functions, WHERE, and JOIN statements to a view and present the data as if the data were coming from one single table.
 */
 
use customer;
show tables;
drop table student;

create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
class varchar(10),
age int,
primary key(id)
);

create table department(
id int not null,
department_id int not null,
department_name varchar(25)not null,
primary key(department_id),
constraint fk_department foreign key(id) references student(id)
);
desc department;
select *from department;
select *from student;

## VIEW QUERY IS CREATING A VIRTUAL TABLE ACCORDING TO OUR REQUIRMENT AND HERE WE ARE JOINING THE COLOUM FROM THE BOTH TABLE
create view student_info as 
select first_name,last_name,department_name from student inner join department
using(id);

select *from student_info;
drop view student_info;












