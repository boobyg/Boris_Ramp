view: lookml_dependencies {
  sql_table_name: `exoplanets.lookml_dependencies`
    ;;

  dimension: dependency {
    type: string
    sql: ${TABLE}.Dependency ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
