- type: log
  enabled: true
  paths:
    - /app/storage/logs/queue_workload*.log
  fields:
    type: workload
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
