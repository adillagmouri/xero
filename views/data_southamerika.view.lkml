# The name of this view in Looker is "Data Southamerika"
view: data_southamerika {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `xero-387613.xero_sales.data_south-amerika`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Aged Between 20 35" in Explore.

  dimension: __aged_between_20_35 {
    type: string
    sql: ${TABLE}.__aged_between_20_35 ;;
  }

  dimension: acties_20_2 {
    type: string
    sql: ${TABLE}.ACTIES_20_2 ;;
  }

  dimension: action_yes_no {
    type: string
    sql: ${TABLE}.Action_yes_no ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: average_income__ {
    type: string
    sql: ${TABLE}.Average_income__ ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: competitors {
    type: string
    sql: ${TABLE}.Competitors ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.Contacts ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: distributors__1_container_monthly_ {
    type: string
    sql: ${TABLE}.Distributors__1_container_monthly_ ;;
  }

  dimension: eu_member {
    type: string
    sql: ${TABLE}.EU_member ;;
  }

  dimension: exclusive_distributors {
    type: string
    sql: ${TABLE}.Exclusive_Distributors ;;
  }

  dimension: keyword_searches {
    type: string
    sql: ${TABLE}.Keyword_searches ;;
  }

  dimension: men_women {
    type: string
    sql: ${TABLE}.Men_women ;;
  }

  dimension: no2_legal {
    type: string
    sql: ${TABLE}.No2_legal ;;
  }

  dimension: parties_hosted {
    type: string
    sql: ${TABLE}.Parties_hosted ;;
  }

  dimension: partners {
    type: string
    sql: ${TABLE}.Partners ;;
  }

  dimension: party_places {
    type: string
    sql: ${TABLE}.Party_places ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_population {
    type: sum
    sql: ${population} ;;
  }

  measure: average_population {
    type: average
    sql: ${population} ;;
  }

  dimension: population_in_urban_areas {
    type: string
    sql: ${TABLE}.Population_in_urban_areas ;;
  }

  dimension: price_12_pallets_2000g {
    type: string
    sql: ${TABLE}.Price_12_pallets_2000g ;;
  }

  dimension: price_12_pallets_640g {
    type: string
    sql: ${TABLE}.Price_12_pallets_640g ;;
  }

  dimension: price_1_pallet_2000g {
    type: string
    sql: ${TABLE}.Price_1_pallet_2000g ;;
  }

  dimension: price_1_pallet_640g {
    type: string
    sql: ${TABLE}.Price_1_pallet_640g ;;
  }

  dimension: price_25_pallets_2000g {
    type: string
    sql: ${TABLE}.Price_25_pallets_2000g ;;
  }

  dimension: price_25_pallets_2000g_34 {
    type: string
    sql: ${TABLE}.Price_25_pallets_2000g_34 ;;
  }

  dimension: price_3_pallets_2000g {
    type: string
    sql: ${TABLE}.Price_3_pallets_2000g ;;
  }

  dimension: price_3_pallets_640g {
    type: string
    sql: ${TABLE}.Price_3_pallets_640g ;;
  }

  dimension: price_7_pallets_2000g {
    type: string
    sql: ${TABLE}.Price_7_pallets_2000g ;;
  }

  dimension: price_7_pallets_640g {
    type: string
    sql: ${TABLE}.Price_7_pallets_640g ;;
  }

  dimension: religion {
    type: string
    sql: ${TABLE}.Religion ;;
  }

  dimension: sales__21_01_2022_tot_20_01_2023_ {
    type: string
    sql: ${TABLE}.Sales__21_01_2022_tot_20_01_2023_ ;;
  }

  dimension: sales_p_p__penetration {
    type: string
    sql: ${TABLE}.Sales_p_p__penetration ;;
  }

  dimension: sales_record {
    type: string
    sql: ${TABLE}.Sales_record ;;
  }

  dimension: succesfull_ {
    type: string
    sql: ${TABLE}.Succesfull_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
