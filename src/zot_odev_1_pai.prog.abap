*&---------------------------------------------------------------------*
*& Include          ZOT_ODEV_1_PAI
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  CASE sy-ucomm.
    WHEN '&BACK'.
      SET SCREEN 0.
     WHEN '&KAYDET'.
        PERFORM save_log.
     WHEN '&SIL'.
       PERFORM clear_data.
     WHEN '&GUNCELLE'.
       PERFORM refresh_data.
     WHEN '&BASTIR'.
       PERFORM show_alv.
  ENDCASE.

ENDMODULE.
