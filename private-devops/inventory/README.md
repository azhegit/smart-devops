.1.1.1# ansible-inventory介绍

动态环境配置，根据需要部署的节点配置及角色配置

## 主机组
为了方便理解跟管理，主机组是根据角色名称同名定义

- 定义主机组`machines`，改主机组包括所有需要用ansible管理的机器信息
```ini
[machines]
kafka-1 ansible_ssh_host=1.1.1.10
kafka-2 ansible_ssh_host=1.1.1.11
kafka-3 ansible_ssh_host=1.1.1.12
```

- 定义主机组子引用
```ini
[ssh:children]
machines
```

- 定义主机组单个节点引用
```ini
[java]
kafka-1
kafka-2
kafka-3
```

## 变量
- 定义全局变量

要保证所有需要部署软件的节点 用户名跟密码 统一
```ini
;全局变量
[all:vars]
;操作用户
ansible_user=admin
;操作用户的密码
ansible_ssh_pass="adminpwd"
;指定离线安装包目录
basic_files_path=../basic-files
;安装器，用来定义是安装还是卸载
;installer_ssh=uninstall
```
- 定义局部变量，是角色名称:vars

```ini
[kafka:vars]
;kafka权限相关配置
sasl_enable= true
```


