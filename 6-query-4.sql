Select avg(Grade.grade)
from grade
inner join assessment On Grade.AssessmentID=assessment.AssessmentID
group by assessment.matiere