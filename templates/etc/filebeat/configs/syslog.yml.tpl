- type: log
  enabled: true
  paths:
    - /var/log/syslog
  fields:
    type: syslog
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
