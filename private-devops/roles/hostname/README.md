# Ansible Role: hostname

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
installer_hostname: install

hostnames_file: "/etc/hosts"
```

## 依赖
无

## Example Playbook
```yaml
- name: hostname
  hosts: hostname
  become: true
  roles:
    - role: hostname
```


