#########################################################################
# File Name: email.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月08日 星期五 16时58分04秒
#########################################################################
#!/bin/bash
EMAIL=email.txt

cat >$EMAIL <<EOF
**************************Server Monitor**********************************
通知类型:故障
服务: $1
主机：$M_IPADDR
状态：警告
日期/时间：$DATE
额外信息：
           $1 Server Connection Refused
**************************************************************************
EOF
fromdos $EMAIL
echo -e "\033[32mThe Monitor $1 Warning,Please Check.\033[0m"
mail -s "192.168.1.149 &1 Warning" Fluency1224@163.com < $EMAIL >>/dev/null 2>&1

