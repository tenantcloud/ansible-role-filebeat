- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/emails*.log
    - /app/storage/logs/emails*.log
  fields:
    type: horizon_email
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
# multiline.flush_pattern: '"\}'
- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/queue-*.log
    - /app/storage/logs/queue-*.log
  fields:
    type: horizon_queue
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
# multiline.flush_pattern: '"\}'
- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/queue_job_exceptions*.log
    - /app/storage/logs/queue_job_exceptions*.log
  fields:
    type:  job_exceptions
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s

