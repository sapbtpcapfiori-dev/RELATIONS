using { cuid } from '@sap/cds/common';

namespace comp.hr;

entity Employees : cuid {
   code : String(10);
   name : String(200);
   // association element
   department : Association to one Departments;
}


entity Departments: cuid{
 code : String(10);
 name : String(200);
}

