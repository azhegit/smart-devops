# ansible-playbook介绍

定义多种角色的组合，配置某些主机组使用某角色来执行部署或者卸载。

## 快速开始

定义2个模块组合的剧本，先通过hostname模块，修改hostname及配置主机映射，接下来通过ssh模块给机器增加互相免密钥登录
```yaml
#名称
- name: hostname
#填写hostname主机组
  hosts: hostname
#是否使用sudo权限
  become: true
#使用hostname模块
  roles:
    - role: hostname

- name: ssh
  hosts: ssh
  become: true
  roles:
    - role: ssh
```

## 案例
1. 全新节点集群，[部署kafka集群](install.yml)，及kafka-manager及grafana监控
2. 全新节点集群，[卸载kafka集群](uninstall.yml)，及kafka-manager及grafana监控
