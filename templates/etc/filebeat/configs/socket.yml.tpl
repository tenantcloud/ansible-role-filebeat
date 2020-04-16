- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/api_message-*.log
    - /var/www/html/*/storage/logs/api_message-*.log
  fields:
    type: ws_api
    host-name: {{ inventory_hostname }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/peak_connections-*.log
    - /var/www/html/*/storage/logs/peak_connections-*.log
  fields:
    type: ws_peak
    host-name: {{ inventory_hostname }}
  fields_under_root: true

- type: log
  enabled: true
  paths:
    - /home/forge/*/storage/logs/websocket_message-*.log
    - /var/www/html/*/storage/logs/websocket_message-*.log
  fields:
    type: ws_message
    host-name: {{ inventory_hostname }}
  fields_under_root: true
