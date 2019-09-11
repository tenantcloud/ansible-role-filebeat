tenantcloud.ansible_role_filebeat
=========

Ansible role for install and setup filebeat. This role include in default terraform scenario for auto-deploy new server.

Requirements
------------

Certificate from tenantcloud.ansible_role_auth_elk role must be generated and upload on S3 bucket.

Role Variables
--------------

crt_file_src: logstash.crt
Name generated certificate

Dependencies
------------


Example Playbook
----------------

```yaml
  - hosts: localhost
    vars:
      crt_file_src: logstash.crt
    become: yes
    roles:
      - tenantcloud.ansible_role_filebeat
```

License
-------

BSD

Author Information
------------------

TenantCloud DevOps Team
