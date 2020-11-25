#!/bin/sh

starttime=`date +'%Y-%m-%d %H:%M:%S'`

core=`uname  -a`

mac="Darwin"

if [[ $core =~ $mac ]];then
    echo "mac本机环境已有ansible"
else
  soft=ansible
  if [ `rpm -qa | grep $soft |wc -l` -ne 0 ];then
    echo  -e "$soft 已经安装，不需要再次安装了"
  else
    echo  -e "$soft 没有安装，准备安装，即将安装..."
    sudo basic-files/rpms/install-rpms.sh basic-files/rpms/ansible
    sudo sed -i '/#host_key_checking/s/^#//' /etc/ansible/ansible.cfg
    sudo sed -i  's/\#log_path = \/var\/log/log_path = ~\/.ansible/g' /etc/ansible/ansible.cfg
  fi
fi

if [ $# -eq 0 ] || [[ $1 =~ '-v' ]]; then
echo default:install.ini install.yml
ansible-playbook -i private-devops/inventory/install.ini private-devops/install.yml $1
else
echo install-$1.ini install-$1.yml
ansible-playbook -i private-devops/inventory/install-$1.ini private-devops/install-$1.yml $2
fi

endtime=`date +'%Y-%m-%d %H:%M:%S'`

start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo -e "开始时间为: $starttime \n结束时间为:$endtime \n运行时间： "$((end_seconds-start_seconds))"s"