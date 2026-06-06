CLASS zcl_emp_service DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_emp_service IMPLEMENTATION.
  METHOD IF_OO_ADT_CLASSRUN~main.

    DATA lt_emp TYPE STANDARD TABLE OF yemp.

 lt_emp = VALUE #(
  (
    emp_id   = 'EMP001'
    emp_name = 'Bhupendra'
    gender   = 'M'
    dob      = '19950115'
    email    = 'bhupendra@gmail.com'
    mobileno = '9876543210'
  )
  (
    emp_id   = 'EMP002'
    emp_name = 'Shadanand'
    gender   = 'F'
    dob      = '19980320'
    email    = 'Shadanand@gmail.com'
    mobileno = '9876543211'
  )
  (
    emp_id   = 'EMP003'
    emp_name = 'Siddhi'
    gender   = 'M'
    dob      = '19970110'
    email    = 'Siddhi@gmail.com'
    mobileno = '9876543212'
  )
  (
    emp_id   = 'EMP004'
    emp_name = 'Mangesh'
    gender   = 'F'
    dob      = '19991205'
    email    = 'Mangesh@gmail.com'
    mobileno = '9876543213'
  )
).

    INSERT yemp FROM TABLE @lt_emp.

    IF sy-subrc = 0.
      COMMIT WORK.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

