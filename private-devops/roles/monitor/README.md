# Ansible Role: 监控模块

## 介绍
grafana及prometheus运行在docker上

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: monitor
install_path: "/opt"

bash_path: "/usr/bin"

soft_home: "{{install_path}}/{{soft_name}}"
soft_profile: "/etc/profile.d/monitor_home.sh"

config_path: "{{soft_home}}/config"

kafka_exporter_path: "{{bash_path}}/kafka_exporter-master"
prometheus_port: 9090
prometheus_data_path: "{{soft_home}}/data/prometheus"
grafana_data_path: "{{soft_home}}/data/grafana"
node_exporter_port: 9100
kafka_exporter_port: 9308

installer_monitor: install
```

## 依赖
ssh
zookeeper
kafka
docker

## Example Playbook
```yaml
- name: monitor
  hosts: monitor
  become: true
  roles:
    - role: monitor
```


