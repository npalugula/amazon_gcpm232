view: amazon_books {
  sql_table_name: `amazon_products.amazon_books`
    ;;

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: book_cover {
    type: string
    sql: ${TABLE}.Book_cover ;;
  }

  dimension: book_name {
    type: string
    sql: ${TABLE}.Book_Name ;;
  }

  dimension: customers_rated {
    type: number
    sql: ${TABLE}.Customers_Rated ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  measure: count {
    type: count
    drill_fields: [book_name]
  }
}
