- type: log
  enabled: true
  paths:
    - /var/log/syslog
  fields:
    type: syslog
    host-name: {{ inventory_hostname }}
  fields_under_root: true
