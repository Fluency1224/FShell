#########################################################################
# File Name: for_2.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 14时35分16秒
#########################################################################
#!/bin/bash
j=0
for ((i=1;i<=100;i++))
do
	j=`expr $i + $j`
done
echo $j
