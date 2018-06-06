#########################################################################
# File Name: read.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 14时54分32秒
#########################################################################
#!/bin/bash
#read -p var 命令 和C中的scanf函数相似
#逐行读取一个文件
while read line
do
	echo $line
done </etc/hosts
