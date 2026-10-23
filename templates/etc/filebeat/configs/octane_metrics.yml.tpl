- type: log
  enabled: true
  paths:
    - /app/storage/logs/octane_metrics*.log
  fields:
    type: octane_metrics
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  scan_frequency: 10s
