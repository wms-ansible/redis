# redis-cluster
=========

3个主机节点，每个主机节点上运行2个redis实例

一共有6个redis实例，3个master实例，3个slave实例

通过脚本安装redis-cluster，master、slave实例由脚本动态分配

- 5一下版本以来ruby脚本来创建集群,需要ruby环境，这个环境我们自己没有编写，使用rvm.role;
- 5以上版本不用ruby环境，直接使用c编写的redis-cli命令创建集群




## Requirements
------------

- cestos7

## Role Variables
--------------

```yaml
ansible_ssh_user: root
ansible_ssh_pass: 123456
redis_node:
  - 172.18.113.63
  - 172.18.113.83
  - 172.18.113.94
```


## Dependencies
------------

1. rvm.ruby
2. wms_ansible.yum

## Example Playbook
----------------
```yaml
---
- hosts: redis-wms
  gather_facts: true
  roles: 
    - role: wms_ansible.yum
    - role: rvm.ruby
      tags: ruby
      rvm1_rubies: ['ruby-2.3.1']
      rvm1_user: 'root'
    - role: wms_ansible.redis
```
