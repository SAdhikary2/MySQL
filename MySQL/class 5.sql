/*
CREATE INDEX statement in SQL is used to create indexes in tables. 
The indexes are used to retrieve data from the database more quickly than others.
The user can not see the indexes, and they are just used to speed up queries /searches.
Note: Updating the table with indexes takes a lot of time than updating a table without indexes.
It is because the indexes also need an update. 
So, only create indexes on those columns that will be frequently searched against
*/

##INDEXING THE VALUES TO SPEED UO THE SEARCHES
use customer;
show tables;
drop table learn;
create table learn(
id int not null,
first_name varchar(25)not null,
last_name varchar(25) not null,
salary int );

create index index_salary
on learn(salary);

desc learn;

insert into learn values(3,'Sulayan','Afikaryu',3500);
select *from learn;

alter table learn
drop index index_salary;
