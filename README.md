Role Name
=========

xrdp

[![Build Status](https://travis-ci.org/cmihai-ansible/xrdp.svg?branch=master)](https://travis-ci.org/cmihai-ansible/xrdp)

Requirements
------------

- For RHEL, a Red Hat subscription or functional local repository.

Role Variables
--------------


Dependencies
------------

- For Red Hat, subscription-manager.

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: xrdp

    - name: set tuned state
      import_role:
        name: xrdp
      vars:
        xrdp_remove_packages: true
        xrdp_enable_service: true
        xrdp_firewall_configure: true
        xrdp_firewall_rules:
          - service: service_name
      tags: xrdp

License
-------

MIT

Author Information
------------------

- [Mihai Criveti](https://www.linkedin.com/in/crivetimihai/)
