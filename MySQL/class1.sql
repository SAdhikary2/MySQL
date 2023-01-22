/*TOPICS
1.create databases
2.drop the databases
3.create table
4.insert the tables
5.drop the table

*/




#to show all the databases
show databases;

#to use any database
use sukalyan;

#to show the existing tables
show tables;

#to delete the databases
drop database sukalyan;

#to create the databases
create database sukalyan;


show databases;


use sukalyan;

#create tables in databases
create table sukalyan_info(id integer, first_name varchar(10),last_name varchar(10));

show tables ;


# to show the column in the table
select *from sukalyan_info;

# to inserting the items in the tables
Insert into sukalyan_info(id,first_name,last_name) values (100,'Sukalyan','Adhikary');

Insert into sukalyan_info(id,first_name,last_name) values (100,'Rohan','Sharma');
/*
#to delete the tables

drop table sukalyan_info;

show tables;

drop database sukalyan;

show databases
*/








