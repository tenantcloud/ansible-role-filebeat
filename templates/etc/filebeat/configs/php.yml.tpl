- type: log
  enabled: true
  paths:
    - /var/log/php7/*fpm.log
    - /var/log/php7/error.log
    - /usr/local/var/log/*fpm.log
  fields:
    type: php_fpm
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{2}'
  multiline.negate: true
  multiline.match: after
  scan_frequency: 60s
