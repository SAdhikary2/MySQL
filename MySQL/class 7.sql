
##______________INNER JOIN______________________________________________________

use customer;
select *from student;
insert into student values(5,'','Kabla','xi',18);
update student  set first_name='kabla',last_name='khan' where id=5;
select *from department;
insert into department values(3,333,'Statistics');

select student.first_name,student.last_name,student.age,department.department_name
from student inner join department
on student.id=department.id;

#___________________________LEFT JOIN_____________________________________________
select student.first_name,student.last_name,student.age,department.department_name
from student left join department
on student.id=department.id;
#______________________________RIGHT JOIN________________________________________

select student.first_name,student.last_name,student.age,department.department_name
from student right join department
on student.id=department.id;

#________________________________FULL OUTER JOIN_________________________________
select student.first_name,student.last_name,student.age,department.department_name
from student left join department
on student.id=department.id
union
select student.first_name,student.last_name,student.age,department.department_name
from student right join department
on student.id=department.id;

#______________________________CROSS JOIN____________________________________

select student.first_name,student.last_name,student.age,department.department_name
from student cross join department;

#________________________________NATURAL JOIN__________________________________
select student.first_name,student.last_name,student.age,department.department_name
from student natural join department;

#IMPORTANT INTERVIEW QUESTION
/*
1. Difference between sql inner join and the sql left join
2. Difference between left join and full join
3. Write a query that will join these two tables so that all rows from table 1 are in the result
*/












