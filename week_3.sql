/*
1. Find the Referee (Main referee) name of the matches 
that were conducted on date 2020-05-21
*/


select mr.referee, r.name
from match_referees mr, matches m, referees r
where mr.match_num=m.match_num and mr.referee=r.referee_id and
m.match_date in (
	select match_date
	from matches
	where match_date='2020-05-21'
)


/*
2. Find all the team names as guest_team 
where the guest_team_score is greater 
than host_team score in an descending order
*/

select distinct t.name as guest_team
from teams t, matches m
where t.team_id=m.guest_team_id and t.team_id in (
	select distinct host_team_id
	from matches
	where guest_team_score>host_team_score
)
order by t.name desc


/*
3. Find all the student_fname,student_lname who are from department 'CS'
have borrowed the book consits the title of 'Programming'
*/


select student_fname, student_lname, s.department_code, bc.title
from students s, members m, book_issue bi, book_copies b_cop, book_catalogue bc
where s.roll_no=m.roll_no and m.member_no=bi.member_no and
bi.accession_no=b_cop.accession_no and b_cop.isbn_no=bc.isbn_no and
s.department_code='CS' and 
bc.title in (select title
			 from book_catalogue
			 where title like '%Programming%')



-- Another way to query

-- select student_fname, student_lname, s.department_code, bc.title
-- from students s natural join members m natural join 
-- book_issue bi natural join book_copies b_cop natural join book_catalogue bc
-- where s.department_code='CS' and 
-- bc.title in (select title
-- 			 from book_catalogue
-- 			 where title like '%Programming%')



/*
4. How long books can be kept with them for ug, pg and fc (faculty)
*/


(select m.member_type, q.max_duration
from students s, members m, quota q
where s.roll_no=m.roll_no and m.member_type=q.member_type)
union
(select m.member_type, q.max_duration
from faculty f, members m, quota q
where f.id=m.id and m.member_type=q.member_type)



/*
5. Find all the students name who are from department 
'Comp. Sci.' but not taken the course which consits the title 
like 'Programming'
*/


select distinct (s.name, s.dept_name)
from student s, takes t
where s.id=t.id and s.dept_name='Comp. Sci.' 
and t.course_id not in (
	select course_id
	from course
	where title like '%Programming%'
)