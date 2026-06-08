CLASS zcl_empfetch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: it_emp TYPE STANDARD TABLE OF zemployee_cds.
  INTERFACES: if_oo_adt_classrun.
    METHODS cl_xco_cp_adt_simple_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_empfetch IMPLEMENTATION.
  METHOD cl_xco_cp_adt_simple_classrun.



    SELECT emp_id,
      emp_name,
      dob,
      gender,
      email,
      mobileno FROM zemployee_cds INTO TABLE @it_emp.



  ENDMETHOD.
  METHOD if_oo_adt_classrun~main.

out->write( it_emp ).

  ENDMETHOD.

ENDCLASS.


