view: tempvendorjurismaster {
  sql_table_name: public.tempvendorjurismaster ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: juris {
    type: string
    sql: ${TABLE}.juris ;;
  }

  dimension: jurisid {
    type: number
    value_format_name: id
    sql: ${TABLE}.jurisid ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
