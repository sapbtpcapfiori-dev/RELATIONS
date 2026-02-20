using { cuid } from '@sap/cds/common';

namespace comp.hr;

entity Employees : cuid {
   code : String(10);
   name : String(200);
   // association element
   department : Association to Departments;
}


@cds.autoexpose : true
entity Departments: cuid{
 code : String(10);
 name : String(200);
 // many association
 employees : Association to many Employees on employees.department = $self
 vendor
}

service EmployeeDepartmentService2{
    entity Employeess as projection on Employees;
    //entity Departments as projection on db.Departments;   
}