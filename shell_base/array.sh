#########################################################################
# File Name: array.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 15时30分43秒
#########################################################################
#!/bin/bash
#数组
soft=(
	centos
	ubuntu
	redhat
	windows
)

for i in `seq 0 3`
do
	echo -e "\033[32mThe system is ${soft[$i]} \033[0m"
done
