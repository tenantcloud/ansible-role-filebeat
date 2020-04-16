- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/sns*
    - /var/www/*/storage/logs/sns*
    - /var/www/html/*/storage/logs/sns*
  fields:
    type: sns
    host-name: {{ inventory_hostname }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
