redis-cluster
=========

3个主机节点，每个主机节点上运行2个redis实例

一共有6个redis实例，3个master实例，3个slave实例

通过脚本安装redis-cluster，master、slave实例由脚本动态分配

Requirements
------------

cestos7

Role Variables
--------------

ansible_ssh_user: root
ansible_ssh_pass: 123456
redis_node:
  - 172.18.113.63
  - 172.18.113.83
  - 172.18.113.94

Dependencies
------------

wms_ansible.yum

Example Playbook
----------------

---
- hosts: redis-wms
  gather_facts: true
  roles: 
    - role: wms_ansible.yum
    - role: wms_ansible.redis


License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
