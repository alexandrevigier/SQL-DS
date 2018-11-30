Select student.*
From student
inner Join absence On student.StudentID=absence.StudentID
having MAX(absence.StudentID)