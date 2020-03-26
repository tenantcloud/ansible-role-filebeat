- type: log
  enabled: true
  paths:
    - /var/log/php7.1-fpm.log
  fields:
    type: php_fpm
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
