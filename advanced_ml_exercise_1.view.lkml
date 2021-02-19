view: advanced_ml_exercise_1 {
  derived_table: {
    sql: SELECT
        users.state AS "users.state",
        DATE(CONVERT_TIMEZONE('UTC', 'America/Los_Angeles', order_items.created_at)) AS "order_items.created_date",
        DATEDIFF('day', user_order_facts.first_order, user_order_facts.latest_order)+1 AS "user_order_facts.days_as_customer",
        users.age AS "users.age",
        distribution_centers.name AS "distribution_centers.name",
        COUNT(DISTINCT order_items.id) AS "order_items.count"
      FROM order_items
      FULL OUTER JOIN inventory_items ON inventory_items.id = order_items.inventory_item_id
      LEFT JOIN users ON order_items.user_id = users.id
      LEFT JOIN distribution_centers ON distribution_centers.id = inventory_items.product_distribution_center_id
      LEFT JOIN (
      SELECT
              user_id
              , COUNT(DISTINCT order_id) AS lifetime_orders
              , SUM(sale_price) AS lifetime_revenue
              , MIN(NULLIF(created_at,0)) AS first_order
              , MAX(NULLIF(created_at,0)) AS latest_order
              , COUNT(DISTINCT DATE_TRUNC('month', NULLIF(created_at,0))) AS number_of_distinct_months_with_orders
            FROM order_items
            GROUP BY user_id
      ) as user_order_facts ON user_order_facts.user_id = order_items.user_id

      GROUP BY 1,2,3,4,5
      ORDER BY 2 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}."users.state" ;;
  }

  dimension: order_items_created_date {
    type: date
    sql: ${TABLE}."order_items.created_date" ;;
  }

  dimension: user_order_facts_days_as_customer {
    type: number
    sql: ${TABLE}."user_order_facts.days_as_customer" ;;
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}."users.age" ;;
  }

  dimension: distribution_centers_name {
    type: string
    sql: ${TABLE}."distribution_centers.name" ;;
  }

  dimension: order_items_count {
    type: number
    sql: ${TABLE}."order_items.count" ;;
  }

  set: detail {
    fields: [
      users_state,
      order_items_created_date,
      user_order_facts_days_as_customer,
      users_age,
      distribution_centers_name,
      order_items_count
    ]
  }
}
