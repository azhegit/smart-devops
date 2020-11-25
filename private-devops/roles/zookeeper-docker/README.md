# Ansible Role: zookeeper docker模块

## 介绍
zookeeper运行在docker上

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: zookeeper-docker
install_path: "/opt"

soft_version: 3.5.6

image_home: "{{install_path}}/images"
soft_file: "{{soft_name}}-{{soft_version}}.tar.gz"
soft_basic_path: "{{basic_files_path}}/{{soft_name}}/{{soft_version}}"
soft_port: 2181
soft_home: "{{install_path}}/{{soft_name}}"
soft_profile: "/etc/profile.d/zookeeper_docker_home.sh"

installer_zookeeper_docker: install
```

## 依赖
ssh
java
docker

## Example Playbook
```yaml
- name: zookeeper-docker
  hosts: zookeeper_docker
  become: true
  roles:
    - role: zookeeper-docker

```


