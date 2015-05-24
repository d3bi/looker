- view: event
  sql_table_name: public.event
  fields:

  - dimension: eventid
    primary_key: true
    type: int
    sql: ${TABLE}.eventid

  - dimension: catid
    type: int
    sql: ${TABLE}.catid

  - dimension: dateid
    type: int
    # hidden: true
    sql: ${TABLE}.dateid

  - dimension: eventname
    sql: ${TABLE}.eventname

  - dimension_group: starttime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.starttime

  - dimension: venueid
    type: int
    # hidden: true
    sql: ${TABLE}.venueid

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - eventid
    - eventname
    - venue.venueid
    - venue.venuename
    - date.dateid
    - listing.count
    - sales.count

