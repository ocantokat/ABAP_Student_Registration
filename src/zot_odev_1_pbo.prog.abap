*&---------------------------------------------------------------------*
*& Include          ZOT_ODEV_1_PBO
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
 SET PF-STATUS '0100'.
 SET TITLEBAR '0100'.

 PERFORM set_dropdown.
 PERFORM set_dropdown_2.


ENDMODULE.