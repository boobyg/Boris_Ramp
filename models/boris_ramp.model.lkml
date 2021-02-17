connection: "snowflake"

datagroup: boris_ramp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: boris_ramp_default_datagroup

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/*.*view.lkml"                # include all views in the views/ folder in this project
#include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard
