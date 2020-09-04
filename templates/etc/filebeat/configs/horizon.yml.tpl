- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/emails*.log
    - /var/www/html/*/storage/logs/emails*.log
  fields:
    type: horizon_email
    host-name: {{ inventory_hostname }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
# multiline.flush_pattern: '"\}'
- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/queue-*.log
    - /var/www/html/*/storage/logs/queue-*.log
  fields:
    type: horizon_queue
    host-name: {{ inventory_hostname }}
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
  fields:
    type:  job_exceptions
    host-name: {{ inventory_hostname }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s

