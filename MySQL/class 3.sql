/*
SQL constraints are used to specify any rules for the records in a table. 
Constraints can be used to limit the type of data that can go into a table. 
It ensures the accuracy and reliability of the records in the table, and 
if there is any violation between the constraint and the record action,
the action is aborted. Constraints can be column level or table level. 
Column level constraints apply to a column, and table-level constraints 
apply to the whole table.
This is the Part 1 series
1. Not Null
2. Unique
3. Primary Key
4. Foreign Key
5. Check
6. Default 
7. Index
*/

##Constraints
create database customer;
use customer;
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int);

show tables;

select *from student;
desc student;

##modication of age 
Alter table student modify age int  not null;

## use of the unique key 
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

insert into person values(3,'hemanta','roy',56);
select * from person;
delete from person where id=2;

##Adding unique feature to other
Alter table person 
ADD unique(first_name);

##Adding the multile unique ness
Alter table person 
add constraint uc_person unique(age, first_name);

desc person;

## dropping the unique constraint
alter table person
drop index uc_person;

### primary key

create table person1(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int,
constraint pk_person primary key(id,first_name)
);

desc person1;

##Adding the primary key
Alter table person1
add primary key (id);



desc person1;
-- alter table person1
-- add constraint pk_person primary key(last_name,age);

## To dropping the primary key
alter table person1
drop primary key;








