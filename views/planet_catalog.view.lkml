view: planet_catalog {
  sql_table_name: `exoplanets.planet_catalog`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: ascending_node {
    type: number
    sql: ${TABLE}.ascending_node ;;
  }

  dimension: binary_system_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.binary_system_identifier ;;
  }

  dimension: declination {
    type: string
    sql: ${TABLE}.declination ;;
  }

  dimension: discovery_method {
    type: string
    sql: ${TABLE}.discovery_method ;;
  }

  dimension: discovery_year {
    type: string
    sql: ${TABLE}.discovery_year ;;
  }

  dimension: distince_from_sol {
    type: number
    sql: ${TABLE}.distince_from_sol ;;
  }

  dimension: eccentricity {
    type: number
    sql: ${TABLE}.eccentricity ;;
  }

  dimension: host_star_age {
    type: number
    sql: ${TABLE}.host_star_age ;;
  }

  dimension: host_star_mass {
    type: number
    sql: ${TABLE}.host_star_mass ;;
  }

  dimension: host_star_metallicity {
    type: number
    sql: ${TABLE}.host_star_metallicity ;;
  }

  dimension: host_star_radius {
    type: number
    sql: ${TABLE}.host_star_radius ;;
  }

  dimension: host_star_temp {
    type: number
    sql: ${TABLE}.host_star_temp ;;
  }

  dimension: identifer {
    type: string
    sql: ${TABLE}.identifer ;;
  }

  dimension: inclination {
    type: number
    sql: ${TABLE}.inclination ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.last_updated ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: mass {
    type: number
    sql: ${TABLE}.mass ;;
  }

  dimension: periastron {
    type: number
    sql: ${TABLE}.periastron ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  dimension: planet_lists {
    type: string
    sql: ${TABLE}.planet_lists ;;
  }

  dimension: radius {
    type: number
    sql: ${TABLE}.radius ;;
  }

  dimension: right_ascension {
    type: string
    sql: ${TABLE}.right_ascension ;;
  }

  dimension: semi_major_axis {
    type: number
    sql: ${TABLE}.semi_major_axis ;;
  }

  dimension: surface_equilib_temp {
    type: number
    sql: ${TABLE}.surface_equilib_temp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
