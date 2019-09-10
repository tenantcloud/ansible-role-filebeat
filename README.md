Ansible role for setup filebeat on elk clients.
=========

Filebeat setup role on elk clients. This role include in default terraform scenario for auto-deploy new server.

-------

For manual installation this role on new client need install galaxy and run playbook:

```ansible-galaxy install tenantcloud.ansible_role_filebeat```

Add this role name to playbook and run:

```cd /tmp/.ansible/ && ansible-playbook playbook-name.yml```

-------

Or in avaliable playbook add to hosts file new client IP address or hostname and run playbook.

-------

Variable included in this role:

{{ crt_file_src }} - name of generated certificate

-------

Sample playbook-name.yml

- hosts: localhost
  vars:
    crt_file_src: logstash.crt
  become: yes
  roles:
    - ansible-role-filebeat

