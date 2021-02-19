view: rashad_query_results {
  sql_table_name: `exoplanets.rashad_query_results`
    ;;

  dimension: pose_x {
    type: number
    sql: ${TABLE}.pose_x ;;
  }

  dimension: pose_y {
    type: number
    sql: ${TABLE}.pose_y ;;
  }

  dimension: robot_id {
    type: string
    sql: ${TABLE}.robot_id ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: velocity {
    type: number
    sql: ${TABLE}.velocity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
