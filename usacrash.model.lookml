- connection: d3bi-redshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: category

- explore: date

- explore: event
  joins:
    - join: venue
      foreign_key: venueid

    - join: date
      foreign_key: dateid


- explore: listing
  joins:
    - join: event
      foreign_key: eventid

    - join: date
      foreign_key: dateid

    - join: venue
      foreign_key: event.venueid


- explore: sales
  joins:
    - join: event
      foreign_key: eventid

    - join: date
      foreign_key: dateid

    - join: venue
      foreign_key: event.venueid


- explore: testingusers

- explore: usacarscrash

- explore: users

- explore: venue

