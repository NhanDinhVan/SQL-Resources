# Write your MySQL query statement below
-- select s.student_id, s.student_name, sj.subject_name, count(e.subject_name) as attended_exams
-- from students as s
-- join subjects as sj
-- left join examinations as e on s.student_id = e.student_id and sj.subject_name = e.subject_name
-- group by s.student_id,  sj.subject_name 
-- order by s.student_id asc, sj.subject_name asc
select s.student_id, s.student_name, sj.subject_name, count(e.subject_name) as attended_exams
from students as s join subjects as sj left join examinations as e on s.student_id = e.student_id and e.subject_name = sj.subject_name
group by s.student_id, sj.subject_name
order by s.student_id, sj.subject_name