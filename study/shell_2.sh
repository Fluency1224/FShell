#########################################################################
# File Name: shell_2.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月05日 星期二 20时25分34秒
#########################################################################
#!/bin/bash

#系统变量和用户变量
name=Fluency
echo "My name is $name"
#系统变量
echo $UID
echo $PWD
# $n n代表参数
echo $0
echo $1
# $?系统变量 查看上个命令是够运行成功 $*所有参数 $#统计参数个数
echo "The \$? is $?"
echo "The \$* is $*"
echo "The \$# is $#"

