## DAY 3 MYSQL LEARNING

###  FORENGH KEY ######

use customer;

show tables;

create table learn(
id int not null,
first_name varchar(25)not null,
last_name varchar(25) not null,
salary int ,
primary key(id));

create table deapartment(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key (department_id),
constraint fk_persondepartment foreign key(id) references learn(id));

drop table deapartment;
drop table learn;




### Another  way of defining foreign key
-- alter table deapartment 
-- add foreign key(id) references learn(id);

desc deapartment;

## CHECK CONSTRAINT
create table learn(
id int not null,
first_name varchar(25)not null,
last_name varchar(25) not null,
salary int ,
primary key(id)
);

alter table learn
add constraint check(salary<50000);

-- insert into learn values(1,'Sukalyan','Adhikary',600000)
insert into learn values(1,'Sukalyan','Adhikary',40000);

select * from learn;

drop table learn;
create table learn(
id int not null,
first_name varchar(25)not null,
last_name varchar(25) not null,
salary int ,
primary key(id)
);

create table learn(
id int not null,
first_name varchar(25)not null,
last_name varchar(25) not null default 'Adhikary',
salary int ,
primary key(id)
);

desc learn;

##command to delete the default constraints
alter table learn
alter last_name drop default;

desc learn
















