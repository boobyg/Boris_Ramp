view: measures_meta {
  sql_table_name: `exoplanets.measures_meta`
    ;;

  dimension: align {
    type: string
    sql: ${TABLE}.align ;;
  }

  dimension: can_filter {
    type: yesno
    sql: ${TABLE}.can_filter ;;
  }

  dimension: can_time_filter {
    type: yesno
    sql: ${TABLE}.can_time_filter ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: default_filter_value {
    type: string
    sql: ${TABLE}.default_filter_value ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dynamic {
    type: yesno
    sql: ${TABLE}.dynamic ;;
  }

  dimension: enumerations {
    type: string
    sql: ${TABLE}.enumerations ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: field_group_label {
    type: string
    sql: ${TABLE}.field_group_label ;;
  }

  dimension: field_group_variant {
    type: string
    sql: ${TABLE}.field_group_variant ;;
  }

  dimension: fill_style {
    type: string
    sql: ${TABLE}.fill_style ;;
  }

  dimension: fiscal_month_offset {
    type: number
    sql: ${TABLE}.fiscal_month_offset ;;
  }

  dimension: has_allowed_values {
    type: yesno
    sql: ${TABLE}.has_allowed_values ;;
  }

  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
  }

  dimension: is_filter {
    type: yesno
    sql: ${TABLE}.is_filter ;;
  }

  dimension: is_fiscal {
    type: yesno
    sql: ${TABLE}.is_fiscal ;;
  }

  dimension: is_numeric {
    type: yesno
    sql: ${TABLE}.is_numeric ;;
  }

  dimension: is_timeframe {
    type: yesno
    sql: ${TABLE}.is_timeframe ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: label_from_parameter {
    type: string
    sql: ${TABLE}.label_from_parameter ;;
  }

  dimension: label_short {
    type: string
    sql: ${TABLE}.label_short ;;
  }

  dimension: lookml_link {
    type: string
    sql: ${TABLE}.lookml_link ;;
  }

  dimension: map_layer {
    type: string
    sql: ${TABLE}.map_layer ;;
  }

  dimension: measure {
    type: yesno
    sql: ${TABLE}.measure ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parameter {
    type: yesno
    sql: ${TABLE}.parameter ;;
  }

  dimension: permanent {
    type: string
    sql: ${TABLE}.permanent ;;
  }

  dimension: primary_key {
    type: yesno
    sql: ${TABLE}.primary_key ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: requires_refresh_on_sort {
    type: yesno
    sql: ${TABLE}.requires_refresh_on_sort ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: sortable {
    type: yesno
    sql: ${TABLE}.sortable ;;
  }

  dimension: source_file {
    type: string
    sql: ${TABLE}.source_file ;;
  }

  dimension: source_file_path {
    type: string
    sql: ${TABLE}.source_file_path ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: sql_case {
    type: string
    sql: ${TABLE}.sql_case ;;
  }

  dimension: suggest_dimension {
    type: string
    sql: ${TABLE}.suggest_dimension ;;
  }

  dimension: suggest_explore {
    type: string
    sql: ${TABLE}.suggest_explore ;;
  }

  dimension: suggestable {
    type: yesno
    sql: ${TABLE}.suggestable ;;
  }

  dimension: suggestions {
    type: string
    sql: ${TABLE}.suggestions ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: time_interval {
    type: string
    sql: ${TABLE}.time_interval ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_attribute_filter_types {
    type: string
    sql: ${TABLE}.user_attribute_filter_types ;;
  }

  dimension: value_format {
    type: string
    sql: ${TABLE}.value_format ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.view ;;
  }

  dimension: view_label {
    type: string
    sql: ${TABLE}.view_label ;;
  }

  dimension: week_start_day {
    type: string
    sql: ${TABLE}.week_start_day ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, name]
  }
}
