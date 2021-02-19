connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: boris_test_git_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: boris_test_git_default_datagroup

explore: dimensions_meta {}

explore: looker_data_dictionary {}

explore: lookml_dependencies {}

explore: measures_meta {}

explore: planet_catalog {}

explore: rashad_query_results {}
