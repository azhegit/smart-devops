# Ansible Role: ssh

## 介绍
ssh主机组互相免密钥，执行主机至ssh主机组免密

## 要求

此角色仅在RHEL及其衍生产品上运行。

## 测试环境

ansible `2.6.1`
运行os `MacOs`
目标os `Centos 7.5`
运行python `2.7.16`

## 角色变量
```yaml
bash_path: "/usr/bin"

node_exporter_path: "{{bash_path}}/node_exporter"

installer_ssh: install

ssh_known_hosts_command: "ssh-keyscan -t ecdsa-sha2-nistp256 -T 10"
ssh_known_hosts_file: "~/.ssh/known_hosts"
```

## 依赖

没有

## Example Playbook
```yaml
- name: ssh
  hosts: ssh
  become: true
  roles:
    - role: ssh
```


