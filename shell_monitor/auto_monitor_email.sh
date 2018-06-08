#########################################################################
# File Name: auto_monitor_email.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月08日 星期五 15时52分31秒
#########################################################################
#!/bin/bash
echo -e "\033[31m \033[1m"
EMAIL=email.txt
DATE=`date`

cat << EOF
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++Welcome to use auto monitor system++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
EOF

if [ -z $1 ];then
	echo -e "\033[32mUsage:{ sh $0 nginx | mysql | list.txt}\033[0m"
	echo
	exit
fi
sleep 2
M_IPADDR=`ifconfig eth0|grep "广播"|awk '{print $2}'|cut -d: -f 2`

if [ -f "$1" -a "$1" == "list.txt" ];then
	for i in `cat list.txt|grep -v "#"`
	do
		count=`ps -ef|grep $1|grep -v grep|grep -v "email"|head -1 |wc -l`
		if [ $count -ne 1 ];then
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
			mail -s "$M_IPADDR &1 Warning" fluency1224@163.com < $EMAIL >>/dev/null 2>&1
		else
			echo -e "\033[32mThe Monitor $1 Server 200 ok!\033[0m"
		fi
		echo -e "\033[32m---------------------------------------------------\033[0m"
	done
else
	count=`ps -ef|grep $1|grep -v grep|grep -v "email"|head -1 |wc -l`
	if [ $count -ne 1 ];then
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
			mail -s "$M_IPADDR &1 Warning" fluency1224@163.com < $EMAIL >>/dev/null 2>&1
		else
			echo -e "\033[32mThe Monitor $1 Server 200 ok!\033[0m"
	fi
	echo -e "\033[32m---------------------------------------------------\033[0m"
	echo "Done"
fi
