- type: log
  enabled: true
  paths:
    - /var/log/nginx/*access.log
  fields:
    type: nginx_access
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/log/nginx/*error.log
  fields:
    type: nginx_error
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/log/nginx/*-access-full.log
  fields:
    type: full_nginx_access
  fields_under_root: true
