#!/usr/bin/env bash
# Linux platform bash file
ssh-add -K ~/.ssh/id_rsa_gitee
echo "正在添加文件..."
git add .
message=`date '+%Y-%m-%d %H:%M:%S'`
if [ $# -eq 1 ]; then
message=$1
fi

git commit -m "$message"
echo "正在开始提交代码..."
git push origin
echo "代码提交到gitee成功，正在关闭..."

#git push gitlab
#echo "代码提交到gitlab成功，正在关闭..."
