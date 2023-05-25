# The name of this view in Looker is "Orderlist"
view: orderlist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `xero-387613.xero_sales.orderlist`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Code" in Explore.

  dimension: account_code {
    type: number
    sql: ${TABLE}.AccountCode ;;
  }

  dimension: continant {
    type: string
    sql: ${TABLE}.continant ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DueDate ;;
  }

  dimension: inventory_item_code {
    type: string
    sql: ${TABLE}.InventoryItemCode ;;
  }

  dimension: invoice_amount_due {
    type: number
    sql: ${TABLE}.InvoiceAmountDue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_invoice_amount_due {
    type: sum
    sql: ${invoice_amount_due} ;;
  }

  measure: average_invoice_amount_due {
    type: average
    sql: ${invoice_amount_due} ;;
  }

  dimension: invoice_amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.InvoiceAmountPaid ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.InvoiceDate ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.InvoiceNumber ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}.LineAmount ;;
  }


  dimension: pocity {
    type: string
    sql: ${TABLE}.POCity ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: sent {
    type: string
    sql: ${TABLE}.Sent ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: tax_type {
    type: string
    sql: ${TABLE}.TaxType ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: unit_amount {
    type: number
    sql: ${TABLE}.UnitAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: sum_Line_amount{
    type: sum
    sql: ${line_amount};;
  }
}
