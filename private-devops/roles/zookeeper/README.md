# Ansible Role: zookeeper

## 介绍
ZooKeeper是一个分布式的，开放源码的分布式应用程序协调服务，是Google的Chubby一个开源的实现，是Hadoop和Hbase的重要组件。它是一个为分布式应用提供一致性服务的软件，提供的功能包括：配置维护、域名服务、分布式同步、组服务等。

[官方地址](https://zookeeper.apache.org/)
[官方文档地址](https://zookeeper.apache.org/doc/trunk/index.html)

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
#软件名称
soft_name: zookeeper
#软件安装父目录
install_path: "/opt"
#软件版本
soft_version: zookeeper-3.4.6
#软件安装根目录
parent_home: "{{install_path}}/{{soft_name}}"
#软件安装家目录
soft_home: "{{parent_home}}/{{soft_version}}"
#软件环境变量文件位置
soft_profile: "/etc/profile.d/zookeeper_home.sh"
#软件安装包
soft_file: "zookeeper-3.4.6.tar.gz"
#软件数据目录
soft_datadir: "{{soft_home}}/data"
#日志目录
soft_datalogdir: "{{soft_home}}/logs"
#服务端口
soft_port: 2181
#软件安装器，默认是安装
installer_zookeeper: install
```

## 依赖
java

## Example Playbook
```yaml
- name: zk
  hosts: zookeeper
  become: true
  roles:
    - role: zookeeper
```


