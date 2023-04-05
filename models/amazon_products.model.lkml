connection: "amazon_books"

# include all the views
include: "/views/**/*.view"

datagroup: amazon_products_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: amazon_products_default_datagroup

explore: connection_reg_r3 {}

explore: amazon_books {}
