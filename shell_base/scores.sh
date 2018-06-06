#########################################################################
# File Name: scores.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月05日 星期二 21时00分05秒
#########################################################################
#!/bin/bash

scores=$1
if [ -z $scores ];then
	echo "Usage:{$0 60|80.}"
	exit
fi

if [[ $scores -gt 85 ]];then
	echo -e "\033[33mVery Good!\033[0m";
elif [[ $scores -gt 75 ]];then
	echo -e "\033[34mGood!\033[0m";
elif [[ $scores -gt 60 ]];then
	echo -e "\033[35mPass!\033[0m";
else
	echo -e "\033[31mNo Pass!\033[0m"
fi
