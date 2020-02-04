- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/laravel*
    - /var/www/*/storage/logs/laravel*
    - /var/www/html/*/storage/logs/laravel*
  fields:
    type: laravel
  fields_under_root: true
  multiline.pattern: '\[[\d]{4}'
  multiline.negate: true
  multiline.match: after
# multiline.flush_pattern: '"\}'
