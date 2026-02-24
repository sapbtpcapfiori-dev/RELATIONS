using { cuid } from '@sap/cds/common';

namespace com.training;

entity Students : cuid {
    studentid : String(15);
    name : String(100);
    courses : Association to many StudentsCourses on courses.student = $self;
}

entity Courses : cuid {
    courseCode : String(10);
    title : String(100);
    students : Association to many StudentsCourses on students.course = $self; 
}


// linked Entity
entity StudentsCourses{
    student : Association to Students;
    course : Association to Courses;
}

// Companies - Projects
// Vehicles - Registration
// Doctor - Patient

// Feb 25,27, Mar 2,9,12 - 30 min

// Country, Currency, Language, Codelist, localized