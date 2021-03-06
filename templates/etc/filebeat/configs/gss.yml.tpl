- type: log   # yamllint disable-line rule:document-start
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/global_search_statistic*.log
    - /var/www/*/storage/logs/global_search_statistic*.log
    - /app/storage/logs/global_search_statistic*.log
  fields:
    type: gss
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
