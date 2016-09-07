- connection: zabbix

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: hosts
#   joins:
#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

- explore: restart_counts

# - explore: acknowledges
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${acknowledges.userid} = ${users.userid}
#       relationship: many_to_one

#     - join: events
#       type: left_outer 
#       sql_on: ${acknowledges.eventid} = ${events.eventid}
#       relationship: many_to_one


# - explore: actions

# - explore: alerts
#   joins:
#     - join: actions
#       type: left_outer 
#       sql_on: ${alerts.actionid} = ${actions.actionid}
#       relationship: many_to_one

#     - join: events
#       type: left_outer 
#       sql_on: ${alerts.eventid} = ${events.eventid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${alerts.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: application_discovery
#   joins:
#     - join: applications
#       type: left_outer 
#       sql_on: ${application_discovery.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: application_prototype
#       type: left_outer 
#       sql_on: ${application_discovery.application_prototypeid} = ${application_prototype.application_prototypeid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${applications.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${application_prototype.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one


# - explore: application_prototype
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${application_prototype.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: application_template
#   joins:
#     - join: applications
#       type: left_outer 
#       sql_on: ${application_template.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${applications.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: applications
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${applications.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: auditlog
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${auditlog.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: auditlog_details

# - explore: autoreg_host

# - explore: conditions
#   joins:
#     - join: actions
#       type: left_outer 
#       sql_on: ${conditions.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: config

# - explore: dbversion

# - explore: dchecks
#   joins:
#     - join: drules
#       type: left_outer 
#       sql_on: ${dchecks.druleid} = ${drules.druleid}
#       relationship: many_to_one


# - explore: dhosts
#   joins:
#     - join: drules
#       type: left_outer 
#       sql_on: ${dhosts.druleid} = ${drules.druleid}
#       relationship: many_to_one


# - explore: drules

# - explore: dservices
#   joins:
#     - join: dhosts
#       type: left_outer 
#       sql_on: ${dservices.dhostid} = ${dhosts.dhostid}
#       relationship: many_to_one

#     - join: dchecks
#       type: left_outer 
#       sql_on: ${dservices.dcheckid} = ${dchecks.dcheckid}
#       relationship: many_to_one

#     - join: drules
#       type: left_outer 
#       sql_on: ${dhosts.druleid} = ${drules.druleid}
#       relationship: many_to_one


# - explore: escalations
#   joins:
#     - join: actions
#       type: left_outer 
#       sql_on: ${escalations.actionid} = ${actions.actionid}
#       relationship: many_to_one

#     - join: triggers
#       type: left_outer 
#       sql_on: ${escalations.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one

#     - join: events
#       type: left_outer 
#       sql_on: ${escalations.eventid} = ${events.eventid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${escalations.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: events

# - explore: expressions
#   joins:
#     - join: regexps
#       type: left_outer 
#       sql_on: ${expressions.regexpid} = ${regexps.regexpid}
#       relationship: many_to_one


# - explore: functions
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${functions.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: triggers
#       type: left_outer 
#       sql_on: ${functions.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: globalmacro

# - explore: globalvars

# - explore: graph_discovery
#   joins:
#     - join: graphs
#       type: left_outer 
#       sql_on: ${graph_discovery.graphid} = ${graphs.graphid}
#       relationship: many_to_one


# - explore: graph_theme

# - explore: graphs

# - explore: graphs_items
#   joins:
#     - join: graphs
#       type: left_outer 
#       sql_on: ${graphs_items.graphid} = ${graphs.graphid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${graphs_items.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: group_discovery
#   joins:
#     - join: groups
#       type: left_outer 
#       sql_on: ${group_discovery.groupid} = ${groups.groupid}
#       relationship: many_to_one


# - explore: group_prototype
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${group_prototype.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${group_prototype.groupid} = ${groups.groupid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: groups

# - explore: history
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${history.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: history_log
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${history_log.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: history_str
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${history_str.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: history_text
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${history_text.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: history_uint
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${history_uint.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: host_discovery
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${host_discovery.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: host_inventory
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${host_inventory.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: hostmacro
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${hostmacro.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: hosts_groups
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${hosts_groups.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${hosts_groups.groupid} = ${groups.groupid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: hosts_templates
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${hosts_templates.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: housekeeper

# - explore: httpstep
#   joins:
#     - join: httptest
#       type: left_outer 
#       sql_on: ${httpstep.httptestid} = ${httptest.httptestid}
#       relationship: many_to_one

#     - join: applications
#       type: left_outer 
#       sql_on: ${httptest.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${httptest.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: httpstepitem
#   joins:
#     - join: httpstep
#       type: left_outer 
#       sql_on: ${httpstepitem.httpstepid} = ${httpstep.httpstepid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${httpstepitem.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: httptest
#       type: left_outer 
#       sql_on: ${httpstep.httptestid} = ${httptest.httptestid}
#       relationship: many_to_one

#     - join: applications
#       type: left_outer 
#       sql_on: ${httptest.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${httptest.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one


# - explore: httptest
#   joins:
#     - join: applications
#       type: left_outer 
#       sql_on: ${httptest.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${httptest.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: httptestitem
#   joins:
#     - join: httptest
#       type: left_outer 
#       sql_on: ${httptestitem.httptestid} = ${httptest.httptestid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${httptestitem.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: applications
#       type: left_outer 
#       sql_on: ${httptest.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${httptest.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one


# - explore: icon_map

# - explore: icon_mapping

# - explore: ids

# - explore: images

# - explore: interface
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${interface.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: interface_discovery
#   joins:
#     - join: interface
#       type: left_outer 
#       sql_on: ${interface_discovery.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${interface.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: item_application_prototype
#   joins:
#     - join: application_prototype
#       type: left_outer 
#       sql_on: ${item_application_prototype.application_prototypeid} = ${application_prototype.application_prototypeid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${item_application_prototype.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: item_condition
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${item_condition.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: item_discovery
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${item_discovery.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: items
#   joins:
#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: items_applications
#   joins:
#     - join: applications
#       type: left_outer 
#       sql_on: ${items_applications.applicationid} = ${applications.applicationid}
#       relationship: many_to_one

#     - join: items
#       type: left_outer 
#       sql_on: ${items_applications.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${applications.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one


# - explore: maintenances

# - explore: maintenances_groups
#   joins:
#     - join: maintenances
#       type: left_outer 
#       sql_on: ${maintenances_groups.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${maintenances_groups.groupid} = ${groups.groupid}
#       relationship: many_to_one


# - explore: maintenances_hosts
#   joins:
#     - join: maintenances
#       type: left_outer 
#       sql_on: ${maintenances_hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${maintenances_hosts.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one


# - explore: maintenances_windows
#   joins:
#     - join: maintenances
#       type: left_outer 
#       sql_on: ${maintenances_windows.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one

#     - join: timeperiods
#       type: left_outer 
#       sql_on: ${maintenances_windows.timeperiodid} = ${timeperiods.timeperiodid}
#       relationship: many_to_one


# - explore: mappings
#   joins:
#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${mappings.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one


# - explore: media
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${media.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: media_type

# - explore: opcommand
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opcommand.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: scripts
#       type: left_outer 
#       sql_on: ${opcommand.scriptid} = ${scripts.scriptid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${scripts.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${scripts.groupid} = ${groups.groupid}
#       relationship: many_to_one


# - explore: opcommand_grp
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opcommand_grp.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${opcommand_grp.groupid} = ${groups.groupid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opcommand_hst
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opcommand_hst.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${opcommand_hst.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: opconditions
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opconditions.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: operations
#   joins:
#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opgroup
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opgroup.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${opgroup.groupid} = ${groups.groupid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opinventory
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opinventory.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opmessage
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opmessage.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opmessage_grp
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opmessage_grp.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${opmessage_grp.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: opmessage_usr
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${opmessage_usr.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${opmessage_usr.userid} = ${users.userid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: optemplate
#   joins:
#     - join: operations
#       type: left_outer 
#       sql_on: ${optemplate.operationid} = ${operations.operationid}
#       relationship: many_to_one

#     - join: actions
#       type: left_outer 
#       sql_on: ${operations.actionid} = ${actions.actionid}
#       relationship: many_to_one


# - explore: profiles
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${profiles.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: proxy_autoreg_host

# - explore: proxy_dhistory
#   joins:
#     - join: drules
#       type: left_outer 
#       sql_on: ${proxy_dhistory.druleid} = ${drules.druleid}
#       relationship: many_to_one

#     - join: dchecks
#       type: left_outer 
#       sql_on: ${proxy_dhistory.dcheckid} = ${dchecks.dcheckid}
#       relationship: many_to_one


# - explore: proxy_history
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${proxy_history.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: regexps

# - explore: rights
#   joins:
#     - join: groups
#       type: left_outer 
#       sql_on: ${rights.groupid} = ${groups.groupid}
#       relationship: many_to_one


# - explore: screen_user
#   joins:
#     - join: screens
#       type: left_outer 
#       sql_on: ${screen_user.screenid} = ${screens.screenid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${screen_user.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: screen_usrgrp
#   joins:
#     - join: screens
#       type: left_outer 
#       sql_on: ${screen_usrgrp.screenid} = ${screens.screenid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${screen_usrgrp.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${screens.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: screens
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${screens.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: screens_items
#   joins:
#     - join: screens
#       type: left_outer 
#       sql_on: ${screens_items.screenid} = ${screens.screenid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${screens.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: scripts
#   joins:
#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${scripts.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: groups
#       type: left_outer 
#       sql_on: ${scripts.groupid} = ${groups.groupid}
#       relationship: many_to_one


# - explore: service_alarms
#   joins:
#     - join: services
#       type: left_outer 
#       sql_on: ${service_alarms.serviceid} = ${services.serviceid}
#       relationship: many_to_one

#     - join: triggers
#       type: left_outer 
#       sql_on: ${services.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one


# - explore: services
#   joins:
#     - join: triggers
#       type: left_outer 
#       sql_on: ${services.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one


# - explore: services_links

# - explore: services_times
#   joins:
#     - join: services
#       type: left_outer 
#       sql_on: ${services_times.serviceid} = ${services.serviceid}
#       relationship: many_to_one

#     - join: triggers
#       type: left_outer 
#       sql_on: ${services.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one


# - explore: sessions
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${sessions.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: slides
#   joins:
#     - join: slideshows
#       type: left_outer 
#       sql_on: ${slides.slideshowid} = ${slideshows.slideshowid}
#       relationship: many_to_one

#     - join: screens
#       type: left_outer 
#       sql_on: ${slides.screenid} = ${screens.screenid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${slideshows.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: slideshow_user
#   joins:
#     - join: slideshows
#       type: left_outer 
#       sql_on: ${slideshow_user.slideshowid} = ${slideshows.slideshowid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${slideshow_user.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: slideshow_usrgrp
#   joins:
#     - join: slideshows
#       type: left_outer 
#       sql_on: ${slideshow_usrgrp.slideshowid} = ${slideshows.slideshowid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${slideshow_usrgrp.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${slideshows.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: slideshows
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${slideshows.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmap_element_url

# - explore: sysmap_url
#   joins:
#     - join: sysmaps
#       type: left_outer 
#       sql_on: ${sysmap_url.sysmapid} = ${sysmaps.sysmapid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${sysmaps.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmap_user
#   joins:
#     - join: sysmaps
#       type: left_outer 
#       sql_on: ${sysmap_user.sysmapid} = ${sysmaps.sysmapid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${sysmap_user.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmap_usrgrp
#   joins:
#     - join: sysmaps
#       type: left_outer 
#       sql_on: ${sysmap_usrgrp.sysmapid} = ${sysmaps.sysmapid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${sysmap_usrgrp.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${sysmaps.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmaps
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${sysmaps.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmaps_elements
#   joins:
#     - join: sysmaps
#       type: left_outer 
#       sql_on: ${sysmaps_elements.sysmapid} = ${sysmaps.sysmapid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${sysmaps.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: sysmaps_link_triggers
#   joins:
#     - join: triggers
#       type: left_outer 
#       sql_on: ${sysmaps_link_triggers.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one


# - explore: sysmaps_links
#   joins:
#     - join: sysmaps
#       type: left_outer 
#       sql_on: ${sysmaps_links.sysmapid} = ${sysmaps.sysmapid}
#       relationship: many_to_one

#     - join: users
#       type: left_outer 
#       sql_on: ${sysmaps.userid} = ${users.userid}
#       relationship: many_to_one


# - explore: timeperiods

# - explore: trends
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${trends.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: trends_uint
#   joins:
#     - join: items
#       type: left_outer 
#       sql_on: ${trends_uint.itemid} = ${items.itemid}
#       relationship: many_to_one

#     - join: hosts
#       type: left_outer 
#       sql_on: ${items.hostid} = ${hosts.proxy_hostid}
#       relationship: many_to_one

#     - join: valuemaps
#       type: left_outer 
#       sql_on: ${items.valuemapid} = ${valuemaps.valuemapid}
#       relationship: many_to_one

#     - join: interface
#       type: left_outer 
#       sql_on: ${items.interfaceid} = ${interface.interfaceid}
#       relationship: many_to_one

#     - join: maintenances
#       type: left_outer 
#       sql_on: ${hosts.maintenanceid} = ${maintenances.maintenanceid}
#       relationship: many_to_one


# - explore: trigger_depends

# - explore: trigger_discovery
#   joins:
#     - join: triggers
#       type: left_outer 
#       sql_on: ${trigger_discovery.triggerid} = ${triggers.triggerid}
#       relationship: many_to_one


# - explore: triggers

# - explore: users

# - explore: users_groups
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${users_groups.userid} = ${users.userid}
#       relationship: many_to_one

#     - join: usrgrp
#       type: left_outer 
#       sql_on: ${users_groups.usrgrpid} = ${usrgrp.usrgrpid}
#       relationship: many_to_one


# - explore: usrgrp

# - explore: valuemaps

