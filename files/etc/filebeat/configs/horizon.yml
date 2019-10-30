- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/emails*.log
    - /var/www/html/*/storage/logs/emails*.log
  fields:
    type: horizon_email
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
# multiline.flush_pattern: '"\}'
- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/queue*.log
    - /var/www/html/*/storage/logs/queue*.log
  fields:
    type: horizon_queue
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
# multiline.flush_pattern: '"\}'
