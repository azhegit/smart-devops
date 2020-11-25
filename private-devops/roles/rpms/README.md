# Ansible Role: rpm

## 介绍
离线rpm包安装模块

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
installer_rpm: install

rpm_path: /home/{{ansible_user}}/.tmp/rpms
soft: ['perl','vim']
```

## 依赖

没有

## Example Playbook
```yaml
- name: rpm
  hosts: rpm
  become: true
  roles:
    - role: rpms
```


