class ZCL_ITG_WEBSERVICE definition
  public
  create public .

public section.

  interfaces IF_HTTP_SERVICE_EXTENSION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ITG_WEBSERVICE IMPLEMENTATION.


  method IF_HTTP_SERVICE_EXTENSION~HANDLE_REQUEST.
     DATA: it_emp TYPE STANDARD TABLE OF zemployee_cds.

    SELECT * FROM zemployee_cds INTO TABLE @it_emp.

  endmethod.
ENDCLASS.
