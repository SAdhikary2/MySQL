show databases;
create database adhikary;
use adhikary;
create table adhikary_info(id integer auto_increment,
first_name varchar(10),
last_name varchar(10),
salary integer,
primary key(id));
show tables;
select * from adhikary_info;

insert into adhikary_info(first_name,last_name,salary) values ('john','Daniel',5000),('Sukalyan','Adhikary',40000),
('Ram','Sharma','30000'),('Laksman','Sharma',Null);

# sort the null values
 #select * from adhikary_info where salary is null;
 
 #select * from adhikary_info where salary is not null;
 
 #sql update statement to replace the null values
 
 #to updaet the null values
update adhikary_info set salary=50000 where id=12;
select *from adhikary_info;

##del sql statement 
delete from adhikary_info where id=3;

## sql alter table
##add column to the existing table

alter table adhikary_info add email varchar(25);
select * from adhikary_info;
update adhikary_info set email='sukalyan0055@gmail.com' where id=2;
##Command to set the date 
alter table adhikary_info add dob date;
update  adhikary_info set dob='2020-05-14'  where id=2;

##Alter table modify column
alter table adhikary_info modify dob year;
desc adhikary_info;

#Alter table to drop the column
alter table adhikary_info drop column email;
select *from adhikary_info;









 


