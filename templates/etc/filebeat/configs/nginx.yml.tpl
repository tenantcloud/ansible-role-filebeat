- type: log
  enabled: true
  paths:
    - /var/log/nginx/*access.log
  fields:
    type: nginx_access
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/log/nginx/*error.log
  fields:
    type: nginx_error
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/log/nginx/*-access-full.log
  fields:
    type: full_nginx_access
    host-name: {{ inventory_hostname }}
    app-type: {{ docker_app_type }}
  fields_under_root: true
