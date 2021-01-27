- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/api_message-*.log
    - /app/storage/logs/api_message-*.log
  fields:
    type: ws_api
    host-name: {{ inventory_hostname }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/peak_connections-*.log
    - /app/storage/logs/peak_connections-*.log
  fields:
    type: ws_peak
    host-name: {{ inventory_hostname }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /var/www/html/*/storage/logs/websocket_message-*.log
    - /app/storage/logs/websocket_message-*.log
  fields:
    type: ws_message
    host-name: {{ inventory_hostname }}
  fields_under_root: true
