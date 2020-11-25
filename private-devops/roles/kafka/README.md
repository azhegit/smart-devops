# Ansible Role: kafka

## 介绍
kafka是HashiCorp公司推出的一款开源工具，用于实现分布式系统的服务发现与配置。与其他类似产品相比，提供更“一站式”的解决方案。kafka内置有KV存储，服务注册/发现，健康检查，HTTP+DNS API，Web UI等多种功能。

官方地址： https://www.kafka.io/
github: https://github.com/hashicorp/kafka
官方文档地址：https://www.kafka.io/docs

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: kafka
install_path: "/opt"
soft_version: kafka_2.11-1.1.1

soft_pid_name: kafkaServer
parent_home: "{{install_path}}/{{soft_name}}"
soft_home: "{{parent_home}}/{{soft_version}}"

soft_profile: "/etc/profile.d/kafka_home.sh"
soft_file: "kafka_2.11-1.1.1.tgz"

soft_port: 9092
soft_conf: "{{ kafka_home }}/config/server{% if soft_port != 9092  %}-{{ soft_port }}{% endif %}.properties"

soft_datadir: "{{soft_home}}/data"
soft_datalogdir: "{{soft_home}}/logs"

#kafka工具
kafka_tools_name: kafka_tools_sasl
kafka_tools_path: "{{install_path}}/{{kafka_tools_name}}"
kafka_tools_profile: "/etc/profile.d/kafka_tools_home.sh"

#kafka权限

sasl_enable: 'false'
sasl_user: "admin"
sasl_password: "adminpwd"
sasl_mechanism: 'scram-sha256'
server_start_bash: kafka-server-start.sh
producer_bash: kafka-console-producer.sh
consumer_bash: kafka-console-consumer.sh
perf_test_bash: kafka-producer-perf-test.sh
producer_properties: producer.properties
consumer_properties: consumer.properties

installer_kafka: install
```

## 依赖
hostname
ssh
java
zookeeper


## Example Playbook
```yaml
- name: kafka
  hosts: kafka
  become: true
  roles:
    - role: kafka
```


