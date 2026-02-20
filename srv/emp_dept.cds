using { comp.hr as db } from '../db/emp_dept';

service EmployeeDepartmentService{
    entity Employees as projection on db.Employees;
    //entity Departments as projection on db.Departments;   
}



