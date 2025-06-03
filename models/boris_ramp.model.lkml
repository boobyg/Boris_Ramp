connection: "testco_ramp_testco"

datagroup: boris_ramp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: boris_ramp_default_datagroup

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/*.*view.lkml"                # include all views in the views/ folder in this project
#include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: order_facts {
  label: "order_facts "
  #fields: [products*,inventory_items*, -products.id, -inventory_items.id, -inventory_items.product_brand]          # how to exclude all that start with prodcut ie , -inventory_items.product*_

  join:  sql_runner_query_lifetime_value_order_count{
    from: sql_runner_query_lifetime_value_order_count
#     type: left_outer    # default
    sql_on: ${order_facts.user_id}_id}=${sql_runner_query_lifetime_value_order_count.user_id}
      ;;
    relationship: one_to_many
#    fields: [products.brand]
    view_label: "Uers fact and lifetime value"
  }
  }
