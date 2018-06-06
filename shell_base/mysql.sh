#########################################################################
# File Name: mysql.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 10时33分44秒
#########################################################################
#!/bin/bash
#Mysql 备份脚本
BACKDIR=./data_backup_mysql/`date +%Y-%m-%d`
MYSQLDB=fluencydb
MYSQLPW=123456
MYSQLUSR=fluency
MYSQLCMD=/usr/bin/mysqldump
#判断是否为fluency用户
if [ $UID -ne 1000 ];then
	echo -e "\033[34mThis script must use the fluency user!!!\033[0m"
	sleep 2
	exit 0
fi
#判断备份目录是否存在
if [ ! -d $BACKDIR ];then
	mkdir -p $BACKDIR
	echo -e "\033[32mThe $BACKDIR Create Successfully!\033[0m"
else
	echo -e "\033[31mThis is $BACKDIR exists...\033[0m"
fi
#use mysqldump backup mysql
$MYSQLCMD -u$MYSQLUSR -p$MYSQLPW -d $MYSQLDB >$BACKDIR/$MYSQLDB.sql

if [ $? -eq 0 ];then
	echo -e "\033[33mThe mysql backup $MYSQLDB successfully!\033[0m"
else
	echo -e "\033[33mThe mysql backup $MYSQLDB failed! Please check!\033[0m"
fi
