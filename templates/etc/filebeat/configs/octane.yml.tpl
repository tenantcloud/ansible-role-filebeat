- type: log
  enabled: true
  paths:
    - /app/storage/logs/swoole_http.log
  fields:
    type: octane
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '^\['
  multiline.negate: true
  multiline.match: after
