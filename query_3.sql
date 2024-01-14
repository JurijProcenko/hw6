select g.name as groupname, avg(grade) as AverageGrade, s.name as study
from grades
left join students on grades.student_id=students.id
left join groups as g on students.group_id=g.id
left join studyes as s on grades.study_id = s.id
where s.id = 3
group by s.name, g.name