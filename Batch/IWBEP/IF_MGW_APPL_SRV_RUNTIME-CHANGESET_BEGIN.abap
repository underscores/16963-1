LOOP AT it_operation_info INTO DATA(ls_operation_info).
  IF ls_operation_info-entity_type = zcl_zflight_01_mpc=>gc_flugbuchung OR
     ls_operation_info-entity_type = zcl_zflight_01_mpc=>gc_flugkunde.
    cv_defer_mode = abap_true.
  ELSE.
    cv_defer_mode = abap_false.
  ENDIF.
ENDLOOP.
