*&---------------------------------------------------------------------*
*& Include          ZOT_ODEV_1_FRM
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form get_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_data .

  SELECT * FROM zotokatt_odev_1
    INTO TABLE gt_ogrenci.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form set_fcat
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_fcat .

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_ID'.
  gs_fcat-scrtext_s = 'Öğr. ID'.
  gs_fcat-scrtext_m = 'Öğrenci ID'.
  gs_fcat-scrtext_l = 'Öğrenci ID Bilgisi'.
  gs_fcat-key       = abap_true. "Key olduğunu belirtir.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_AD'.
  gs_fcat-scrtext_s = 'Öğr. AD'.
  gs_fcat-scrtext_m = 'Öğrenci AD'.
  gs_fcat-scrtext_l = 'Öğrenci AD Bilgisi'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_SOYAD'.
  gs_fcat-scrtext_s = 'Öğr. S.AD'.
  gs_fcat-scrtext_m = 'Öğrenci Soy Ad'.
  gs_fcat-scrtext_l = 'Öğrenci Soy Ad'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_CINS'.
  gs_fcat-scrtext_s = 'Öğr.C'.
  gs_fcat-scrtext_m = 'Öğrenci Cins.'.
  gs_fcat-scrtext_l = 'Öğrenci Cinsiyet'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_YAS'.
  gs_fcat-scrtext_s = 'Öğr.Yaş'.
  gs_fcat-scrtext_m = 'Öğrenci Yaş'.
  gs_fcat-scrtext_l = 'Öğrenci Yaş Bilgisi'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_DTARIH'.
  gs_fcat-scrtext_s = 'Öğr. DT'.
  gs_fcat-scrtext_m = 'Öğrenci D.Tarih'.
  gs_fcat-scrtext_l = 'Öğrenci Doğum Tarihi'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_OKUL'.
  gs_fcat-scrtext_s = 'Öğr. O'.
  gs_fcat-scrtext_m = 'Öğrenci Okul'.
  gs_fcat-scrtext_l = 'Öğrenci Okul Bilgisi'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_SEHIR'.
  gs_fcat-scrtext_s = 'Öğr. Şhr'.
  gs_fcat-scrtext_m = 'Öğrenci Şehir'.
  gs_fcat-scrtext_l = 'Öğrenci Şehir Bilgisi'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_DERS_S'.
  gs_fcat-scrtext_s = 'Öğr. D.S'.
  gs_fcat-scrtext_m = 'Öğrenci Ders S.'.
  gs_fcat-scrtext_l = 'Öğrenci Ders Sayısı'.
  APPEND gs_fcat TO gt_fcat.

  CLEAR: gs_fcat.
  gs_fcat-fieldname = 'OGR_KULUP'.
  gs_fcat-scrtext_s = 'Öğr. K'.
  gs_fcat-scrtext_m = 'Öğrenci Kulüp'.
  gs_fcat-scrtext_l = 'Öğrenci Kulüp'.
  APPEND gs_fcat TO gt_fcat.



ENDFORM.
*&---------------------------------------------------------------------*
*& Form set_layout
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_layout .

ENDFORM.
*&---------------------------------------------------------------------*
*& Form set_dropdown
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_dropdown .

  gv_vrm = 'GV_YAS'.

  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING

      id                    = gv_vrm
      values                = gt_values.


ENDFORM.
*&---------------------------------------------------------------------*
*& Form fill_dropdown
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM fill_dropdown .

  gv_index = 18.

  DO 60 TIMES.

    gs_value-key = gv_index.
    gs_value-text = gv_index.

    APPEND gs_value TO gt_values.

    gv_index = gv_index + 1.

  ENDDO.



ENDFORM.
*&---------------------------------------------------------------------*
*& Form set_dropdown_2
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_dropdown_2 .

  gv_vrm_2 = 'GV_DERS_S'.

  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      id                    = gv_vrm_2
      values                = gt_values_2.


ENDFORM.
*&---------------------------------------------------------------------*
*& Form fill_dropdown_2
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM fill_dropdown_2 .

  gv_index_2 = 5.

  DO 5 TIMES.

    gs_value_2-key = gv_index_2.
    gs_value_2-text = gv_index_2.

    APPEND gs_value_2 TO gt_values_2.

    gv_index_2 = gv_index_2 + 1.

  ENDDO.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form save_log
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM save_log .

  CLEAR: gs_ogrenci.
  gs_ogrenci-ogr_id = gv_id.
  gs_ogrenci-ogr_ad = gv_ad.
  gs_ogrenci-ogr_soyad = gv_sad.
  IF gv_rad1 = abap_true.
    gs_ogrenci-ogr_cins = 'E'.
  ELSE.
    gs_ogrenci-ogr_cins = 'K'.
  ENDIF.
  gs_ogrenci-ogr_yas = gv_yas.
  gs_ogrenci-ogr_dtarih = gv_dtarih.
  gs_ogrenci-ogr_sehir = gv_sehir.
  gs_ogrenci-ogr_kulup = gv_kulup.
  gs_ogrenci-ogr_ders_s = gv_ders_s.

  INSERT ZOTOKATT_ODEV_1 FROM gs_ogrenci.
  COMMIT WORK AND WAIT.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form clear_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM clear_data .

  CLEAR: gv_ad,
         gv_sad,
         gv_ders_s,
         gv_id,
         gv_kulup,
         gv_dtarih,
         gv_okul,
         gv_yas.
  gv_rad1 = abap_true.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form refresh_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM refresh_data .

SELECT * FROM zotokatt_odev_1
    INTO TABLE gt_ogrenci.

go_grid->refresh_table_display(
  EXPORTING
    is_stable      =  is_stable              " With Stable Rows/Columns

).
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.


ENDFORM.
*&---------------------------------------------------------------------*
*& Form show_alv
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM show_alv .

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM set_layout.
  PERFORM display_alv.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form display_alv
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM display_alv .

  IF go_grid IS INITIAL.

    CREATE OBJECT go_container
      EXPORTING
        container_name              = 'CC_ALV'
      .

    CREATE OBJECT go_grid
      EXPORTING
        i_parent                = go_container.


    CALL METHOD go_grid->set_table_for_first_display
      EXPORTING
*        i_buffer_active               =                  " Buffering Active
*        i_bypassing_buffer            =                  " Switch Off Buffer
*        i_consistency_check           =                  " Starting Consistency Check for Interface Error Recognition
*        i_structure_name              =                  " Internal Output Table Structure Name
*        is_variant                    =                  " Layout
*        i_save                        =                  " Save Layout
*        i_default                     = 'X'              " Default Display Variant
        is_layout                     =  gs_layout               " Layout
*        is_print                      =                  " Print Control
*        it_special_groups             =                  " Field Groups
*        it_toolbar_excluding          =                  " Excluded Toolbar Standard Functions
*        it_hyperlink                  =                  " Hyperlinks
*        it_alv_graphics               =                  " Table of Structure DTC_S_TC
*        it_except_qinfo               =                  " Table for Exception Quickinfo
*        ir_salv_adapter               =                  " Interface ALV Adapter
      CHANGING
        it_outtab                     =   gt_ogrenci               " Output Table
        it_fieldcatalog               =   gt_fcat               " Field Catalog
*        it_sort                       =                  " Sort Criteria
*        it_filter                     =                  " Filter Criteria
*      EXCEPTIONS
*        invalid_parameter_combination = 1                " Wrong Parameter
*        program_error                 = 2                " Program Errors
*        too_many_lines                = 3                " Too many Rows in Ready for Input Grid
*        others                        = 4
      .
    IF SY-SUBRC <> 0.
*     MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*       WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
    ENDIF.

    ELSE.
      CALL METHOD go_grid->register_edit_event
      EXPORTING
        i_event_id = cl_gui_alv_grid=>mc_evt_modified.

  ENDIF.

ENDFORM.
