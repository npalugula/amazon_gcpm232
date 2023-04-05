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
  dimension: price_range {

    type: string
    sql:
      CASE
      WHEN ${TABLE}.Price is null THEN '> 20'
      WHEN ${TABLE}.Price between 0 and 5     THEN '0 - 5'
      WHEN ${TABLE}.Price between 6 and 10    THEN '6 - 10'
      WHEN ${TABLE}.Price between 11 and 15    THEN '11 - 15'
      WHEN ${TABLE}.Price between 16 and 20   THEN '16 - 20'
                                     ELSE '> 20'
      END
  ;;
  }
}
