- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/laravel*
    - /var/www/*/storage/logs/laravel*
    - /var/www/html/*/storage/logs/laravel*
    - /app/storage/logs/laravel*
  fields:
    type: laravel
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
# multiline.flush_pattern: '"\}'
