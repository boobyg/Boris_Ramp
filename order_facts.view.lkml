view: order_facts {
  derived_table: {
    sql: select
      order_id
      ,user_id
      ,count(*) as order_item_count
      ,sum(sale_price) as order_total
      from ECOMM.order_items
      group by 1,2
      order by 3 desc
       ;;
  }
#need primary key for measure to appear...

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: order_item_count {
    type: number
    sql: ${TABLE}.ORDER_ITEM_COUNT ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.ORDER_TOTAL ;;
  }

  set: detail {
    fields: [order_id, user_id, order_item_count, order_total]
  }
}
