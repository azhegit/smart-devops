# Ansible Role: docker

## 介绍
修改主机名并且所有机器添加机器映射

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
soft_name: docker
soft_pid_name: dockerd
tmp_path: "/tmp"
install_path: "/opt"

soft_version: jdk1.8.0_171

parent_home: "{{tmp_path}}/{{soft_name}}"
bash_path: "/usr/bin"

soft_home: "{{install_path}}/{{soft_name}}"

soft_profile: "/usr/lib/systemd/system/docker.service"
soft_file: "docker-18.03.1-ce.tgz"

installer_docker: install
```

## 依赖
无

## Example Playbook
```yaml
- name: docker
  hosts: docker
  become: true
  roles:
    - role: docker
```
