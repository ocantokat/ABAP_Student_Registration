*&---------------------------------------------------------------------*
*& Include          ZOT_ODEV_1_TOP
*&---------------------------------------------------------------------*

DATA: gt_ogrenci TYPE TABLE OF ZOTOKATT_ODEV_1,
      gs_ogrenci TYPE ZOTOKATT_ODEV_1.

DATA: go_grid TYPE REF TO cl_gui_alv_grid.

DATA: go_container TYPE REF TO cl_gui_custom_container,
      gt_fcat TYPE lvc_t_fcat,
      gs_fcat TYPE lvc_s_fcat,
      gs_layout TYPE lvc_s_layo.

DATA: gv_id TYPE i.

DATA: gv_ad TYPE char20,
      gv_sad TYPE char30.

DATA: gv_rad1 TYPE xfeld,
      gv_rad2 TYPE xfeld.

DATA: gv_yas TYPE i.

DATA: gv_dtarih TYPE datum.

DATA: gv_okul TYPE char30,
      gv_kulup TYPE char40,
      gv_sehir TYPE char20,
      gv_ders_s TYPE i.

DATA: gv_vrm TYPE VRM_ID.
DATA: gt_values TYPE VRM_VALUES,
      gs_value TYPE VRM_VALUE.

DATA: gv_index TYPE i.

DATA: gv_vrm_2 TYPE VRM_ID.
DATA: gt_values_2 TYPE VRM_VALUES,
      gs_value_2 TYPE VRM_VALUE.

DATA: gv_index_2 TYPE i.

DATA: is_stable TYPE lvc_s_stbl.

PERFORM fill_dropdown.
PERFORM fill_dropdown_2.
