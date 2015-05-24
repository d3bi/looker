- view: usacarscrash
  sql_table_name: public.usacarscrash
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: age
    type: int
    sql: ${TABLE}.age

  - dimension: alcohol_results
    type: number
    sql: ${TABLE}.alcohol_results

  - dimension: atmospheric_condition
    sql: ${TABLE}.atmospheric_condition

  - dimension: crash_date
    sql: ${TABLE}.crash_date

  - dimension: drug_involvement
    sql: ${TABLE}.drug_involvement

  - dimension: fatalities_in_crash
    type: int
    sql: ${TABLE}.fatalities_in_crash

  - dimension: first_harmful_event
    sql: ${TABLE}.first_harmful_event

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: injury_severity
    sql: ${TABLE}.injury_severity

  - dimension: person_type
    sql: ${TABLE}.person_type

  - dimension: race
    sql: ${TABLE}.race

  - dimension: roadway
    sql: ${TABLE}.roadway

  - dimension: state
    sql: ${TABLE}.state

  - measure: count
    type: count
    drill_fields: [id]

