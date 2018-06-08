#########################################################################
# File Name: ip.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年05月16日 星期三 11时54分51秒
#########################################################################
#!/bin/bash
# this program is used to config ip

procnum=` ifconfig eth0 | grep "inet addr" | awk '{print $2}' | wc -l`
ipaddr=` ifconfig eth0 | grep "inet addr" | awk '{print $2}' `
if [ $procnum -eq 0 ]; then
	ifconfig eth0 192.168.1.94
else
	echo "Have a ip : $ipaddr"
fi
