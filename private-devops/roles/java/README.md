# Ansible Role: java

## 介绍
java部署

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: java
install_path: "/opt"

soft_version: jdk1.8.0_171

parent_home: "{{install_path}}/{{soft_name}}"
soft_home: "{{parent_home}}/{{soft_version}}"

soft_profile: "/etc/profile.d/java_home.sh"
soft_file: "jdk-8u171-linux-x64.tar"

installer_java: install
```

## 依赖

没有

## Example Playbook
```yaml
- name: java
  hosts: java
  become: true
  roles:
    - role: java
```


