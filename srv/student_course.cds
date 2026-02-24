using { com.training as db } from '../db/student_courses';

service StudentCoursesService {

    entity Students as projection on db.Students;
    entity Courses as projection on db.Courses;
    entity StudentsCourses as projection on db.StudentsCourses;

}