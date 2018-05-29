connection: "dev-redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: weather_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: weather_default_datagroup

explore: dim_calendar {}

explore: dim_calendar_k {}

explore: tempvendorjurismaster {}

explore: v_generate_udf_ddl {}
