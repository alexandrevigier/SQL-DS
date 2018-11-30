CREATE TABLE Class (
    ClassID int(4) primary key auto_increment not NULL , 
	name text NOT NULL )

CREATE TABLE Assessment (
    AssessmentID int(4) UNSIGNED AUTO_INCREMENT NOT NULL,
    matiere varchar(255) NOT NULL,
    trainer_name varchar(255) NOT NULL,
    A_date DATE unsigned not null,
    ClassID int,
    PRIMARY KEY (AssessmentID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE Student (
StudentID int(10) UNSIGNED AUTO_INCREMENT NOT NULL,
firstname varchar(255) NOT NULL,
lastname varchar(255) NOT NULL,
email varchar(255) NOT NULL,
ClassID int(10) NOT NULL,
PRIMARY KEY (StudentID),
FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE Grade (
GradeID int(10) UNSIGNED AUTO_INCREMENT NOT NULL,
grade int(10) Unsigned NOT NULL,
StudentID int(10) UNSIGNED NOT NULL,
AssessmentID int UNSIGNED NOT NULL,
PRIMARY KEY (GradeID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
FOREIGN KEY (AssessmentID) REFERENCES Assessment(AssessmentID)
);

CREATE TABLE Absence (
AbsenceID int(10) UNSIGNED  AUTO_INCREMENT NOT NULL,
A_date DATE UNSIGNED NOT NULL,
StudentID int(10) UNSIGNED NOT NULL,
PRIMARY KEY (AbsenceID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);