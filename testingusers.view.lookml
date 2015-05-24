- view: testingusers
  sql_table_name: public.testingusers
  fields:

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: username
    sql: ${TABLE}.username

  - measure: count
    type: count
    drill_fields: [username, firstname, lastname]

