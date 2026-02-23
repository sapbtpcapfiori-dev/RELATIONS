using { cuid } from '@sap/cds/common';

namespace comp.hr;

entity Employees : cuid {
   code : String(10) @assert.unique;
   name : String(200);
   // association element
   department : Association to Departments;
}


//@cds.autoexpose
entity Departments: cuid{
 code : String(10);
 name : String(200);
 // many association
 employees : Association to many Employees on employees.department = $self;
 
}
