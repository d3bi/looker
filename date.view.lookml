- view: date
  sql_table_name: public.date
  fields:

  - dimension: dateid
    primary_key: true
    type: int
    sql: ${TABLE}.dateid

  - dimension_group: caldate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.caldate

  - dimension: day
    sql: ${TABLE}.day

  - dimension: holiday
    type: yesno
    sql: ${TABLE}.holiday

  - dimension: month
    sql: ${TABLE}.month

  - dimension: qtr
    sql: ${TABLE}.qtr

  - dimension: week
    type: number
    sql: ${TABLE}.week

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [dateid, event.count, listing.count, sales.count]

