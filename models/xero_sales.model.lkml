# Define the database connection to be used for this model.
connection: "xero_sales"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: xero_sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: xero_sales_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Xero Sales"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: xero_sales {
  join: data_europe {
    type: left_outer
    sql_on: ${xero_sales.country}=${data_europe.country} ;;
    relationship: many_to_one
  }
  join: data_africa{
    type: left_outer
    sql_on: ${xero_sales.country}=${data_africa.country};;
    relationship: many_to_one
  }
  join: data_southamerika{
    type: left_outer
    sql_on: ${xero_sales.country}=${data_southamerika.country};;
    relationship: many_to_one
  }
  join: data_usa{
    type: left_outer
    sql_on: ${xero_sales.country}=${data_usa.state};;
    relationship: many_to_one
  }
  join: orderlist{
    type: left_outer
    sql_on: ${xero_sales.country}=${orderlist.country};;
    relationship: many_to_one
  }
}
explore: orderlist {}
