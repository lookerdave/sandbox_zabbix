- view: restart_counts
  
  derived_table:
    sql: |
      SELECT count(distinct e.eventid) as cnt_event
        , h.host as host
        , t.description as description
        , t.priority as priority
      FROM events e
        , hosts h
        , triggers t
        , functions f
        , items i
      WHERE h.hostid = i.hostid
        and i.itemid = f.itemid
        and t.triggerid=f.triggerid
        and t.triggerid=e.objectid
        and t.priority>3
      GROUP BY h.host,t.triggerid,t.description,t.expression,t.priority
      ORDER BY cnt_event desc, h.host, t.description, t.triggerid
    indexes: [h.hostid, i.hostid]
    persist_for: 48 hours
  
  fields:
#   - dimension: triggerid
#     primary_key: true
#     hidden: true
#     type: number
    
  - dimension: cnt_event
    label: event_count
    type: number
    sql: ${TABLE}.cnt_event
    
  - dimension: host
    type: string
    sql: ${TABLE}.host
    
  - dimension: description
    type: string
    sql: ${TABLE}.description