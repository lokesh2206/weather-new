view: v_generate_udf_ddl {
  sql_table_name: public.v_generate_udf_ddl ;;

  dimension: ddl {
    type: string
    sql: ${TABLE}.ddl ;;
  }

  dimension: schemaname {
    type: string
    sql: ${TABLE}.schemaname ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension: udfname {
    type: string
    sql: ${TABLE}.udfname ;;
  }

  measure: count {
    type: count
    drill_fields: [udfname, schemaname]
  }
}
