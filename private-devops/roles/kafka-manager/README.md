# Ansible Role: kafka-manager

## 介绍
Kafka Manager 是 Yahoo 推出的 Kafka 管理工具，支持：

- 管理多个集群
- 轻松检查集群状态 (topics, brokers, replica distribution, partition distribution)
- 执行复制选举
- 生成分区指派，基于集群的状态
- 分区的重新指派

该项目基于 Play Framework 框架开发。

github: https://github.com/yahoo/kafka-manager

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: kafka-manager
install_path: "/opt"
soft_version: kafka-manager-1.3.3.23

soft_pid_name: kafka-manager
parent_home: "{{install_path}}/{{soft_name}}"
soft_home: "{{parent_home}}/{{soft_version}}"

soft_profile: "/etc/profile.d/kafka_manager_home.sh"
soft_file: "kafka-manager-1.3.3.23.zip"

soft_port: 8089
soft_conf: "{{ soft_home }}/conf/application.conf"

soft_datadir: "{{soft_home}}/data"
soft_datalogdir: "{{soft_home}}/logs"

sasl_config: "{% if sasl_enable=='true' %} -Djava.security.auth.login.config=$KAFKA_HOME/config/kafka_client_jaas.conf {% else %} {% endif %}"

kafka_manager_auth: 'false'
kafka_manager_auth_user: admin
kafka_manager_auth_pass: adminpwd

installer_kafka_manager: install
```

## 依赖
hostname
ssh
java
zookeeper
kafka

## Example Playbook
```yaml
- name: kafka-manager
  hosts: kafka-manager
  become: true
  roles:
    - role: kafka-manager
```


