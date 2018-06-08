#########################################################################
# File Name: device_info.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月08日 星期五 19时04分17秒
#########################################################################
#!/bin/bash
ip_info=`ifconfig eth0 |grep "广播"|awk '{print $2}'|cut -d: -f2`
cpu_info=`cat /proc/cpuinfo |grep "model name"|awk -F: '{print $2}'|sed 's/^//g'|awk '{print $1,$3,$4,$NF}'|head -1`
cpu_number=`cat /proc/cpuinfo |grep "physical id" |sort |uniq -c |wc -l`
serv_info=`hostname |tail -1`
disk_info=`sudo fdisk -l /dev/sda |grep "Disk" |grep -v "identifier" |awk '{print $2,$3,$4}' |sed 's/,//g'`
mem_info=`free -m |grep "Mem" |awk '{print "Total",$1,$2"M"}'`
load_info=`uptime |awk '{print "CurrentLoad:"$(NF-2)}' |sed 's/\,//g'`

#写入CSV文件 可以用Excel打开
echo -e "\033[32m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\033[0m"
echo "IP,HostName,CPU,Disk,Mem,Load" >>1.csv
echo "${ip_info},${serv_info},${cpu_info},${disk_info},${mem_info},${load_info}" >>1.csv
echo -e "\033[32m^^^^^^^^^^^^^写入完成^^^^^^^^^^^^^^^^^^^\033[0m"

