#!/bin/sh
starttime=`date +'%Y-%m-%d %H:%M:%S'`
core=`uname  -a`

if [ $# -eq 0 ] || [[ $1 =~ '-v' ]]; then
echo default:install.ini uninstall.ini uninstall.yml
#ansible-playbook -i private-devops/inventory/install.ini -i private-devops/inventory/uninstall.ini private-devops/uninstall.yml $1
else
echo install-$1.ini uninstall.ini uninstall-$1.yml
#ansible-playbook -i private-devops/inventory/install-$1.ini -i private-devops/inventory/uninstall.ini private-devops/uninstall-$1.yml $2
fi

mac="Darwin"

if [[ $core =~ $mac ]];then
    echo "mac本机环境已有ansible"
else
  soft=ansible
  if [ `rpm -qa | grep $soft |wc -l` -ne 0 ];then
    echo  -e " 已经安装，准备卸载..."
    sudo basic-files/rpms/uninstall-rpms.sh basic-files/rpms/ansible
  fi
fi

endtime=`date +'%Y-%m-%d %H:%M:%S'`

start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo -e "开始时间为: $starttime \n结束时间为:$endtime \n运行时间： "$((end_seconds-start_seconds))"s"