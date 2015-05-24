- view: listing
  sql_table_name: public.listing
  fields:

  - dimension: dateid
    type: int
    # hidden: true
    sql: ${TABLE}.dateid

  - dimension: eventid
    type: int
    # hidden: true
    sql: ${TABLE}.eventid

  - dimension: listid
    type: int
    sql: ${TABLE}.listid

  - dimension_group: listtime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.listtime

  - dimension: numtickets
    type: number
    sql: ${TABLE}.numtickets

  - dimension: priceperticket
    type: number
    sql: ${TABLE}.priceperticket

  - dimension: sellerid
    type: int
    sql: ${TABLE}.sellerid

  - dimension: totalprice
    type: number
    sql: ${TABLE}.totalprice

  - measure: count
    type: count
    drill_fields: [event.eventid, event.eventname, date.dateid]

