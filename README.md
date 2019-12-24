Role Name
=========

xrdp

[![Build Status](https://travis-ci.org/cmihai-ansible/xrdp.svg?branch=master)](https://travis-ci.org/cmihai-ansible/xrdp)

Ansible Galaxy:
---------------

[https://galaxy.ansible.com/crivetimihai/xrdp](https://galaxy.ansible.com/crivetimihai/xrdp)

```bash
ansible-galaxy install crivetimihai.xrdp
```

Requirements
------------

- For RHEL, a Red Hat subscription or functional local repository.

Role Variables
--------------

```
xrdp_remove_packages: true
xrdp_enable_service: true
xrdp_firewall_configure: true
xrdp_firewall_rules:
  - service:
```

Dependencies
------------

- For Red Hat, subscription-manager.

Example Playbook
----------------

```yaml
---
- name: Install xrdp on localhost
  hosts:
    - localhost
  connection: local

  tasks:
    - name: xrdp is configured
      import_role:
        name: crivetimihai.xrdp
      vars:
        xrdp_remove_packages: true
        xrdp_enable_service: true
        xrdp_firewall_configure: true
        xrdp_firewall_rules:
          - port: 3389
      tags: xrdp
```

License
-------

MIT

Author Information
------------------

- [Mihai Criveti](https://www.linkedin.com/in/crivetimihai/)
