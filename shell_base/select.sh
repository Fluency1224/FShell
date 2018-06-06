#########################################################################
# File Name: select.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 15时04分21秒
#########################################################################
#!/bin/bash
PS="Select your will exex menu:"

select i in "apache" "mysql" "php"
do
case $i in
	apache)
		echo -e "\033[32mWait install httpd server...\033[0m"
		;;
	mysql )
		echo -e "\033[32mWait install Mysql server...\033[0m"
		;;
	php   )
		echo -e "\033[32mWait install PHP server...\033[0m"
		;;
	*     )
		echo -e "\033[32m[Usage: {$0 apache|mysql|php|help}]\033[0m"
		;;
esac

done
