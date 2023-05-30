# The name of this view in Looker is "Xero Sales"
view: xero_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `xero_sales.xero_sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Brand Awareness" in Explore.

  dimension: brand_awareness {
    type: string
    sql: ${TABLE}.Brand_awareness ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.business_type ;;
  }

  dimension: continent {
    type: string
    # sql: ${TABLE}.continant ;;
    sql: concat(upper(substring(${TABLE}.continant,1,1)),substring(${TABLE}.continant,2,length(${TABLE}.continant)));;
  }

  dimension: countries_states {
    type: string
    sql: ${TABLE}.countries_states ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: Year {
    type: string
    sql: concat('20', substring(${TABLE}.date,4,2))  ;;
  }

  dimension: google_ads {
    type: string
    sql: ${TABLE}.Google_ads ;;
  }

  dimension: lead_gen {
    type: string
    sql: ${TABLE}.Lead_gen ;;
  }

  dimension: prioritization {
    type: string
    sql: ${TABLE}.Prioritization ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sales {
    type: sum
    sql: ${sales} ;;
    value_format_name: eur_0
  }

  measure: average_sales {
    type: average
    sql: ${sales} ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.Target ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: percent_of_total_gross_margin {
    type: percent_of_total
    sql: ${total_sales} ;;
    }
}
