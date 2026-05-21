/*
1. Find the titles of courses in the 'Comp. Sci.' department 
that have 3 credits
*/

select title
from course
where dept_name='Comp. Sci.' and credits=3


/*
2. Find the highest salary in each department
*/
select dept_name, max(salary)
from instructor
group by dept_name

/*
3. Find all the instructors earning the highest salary
*/

select name
from instructor
where salary=(
	select max(salary)
    from instructor
)
