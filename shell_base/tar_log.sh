#########################################################################
# File Name: tar_log.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月06日 星期三 14时39分13秒
#########################################################################
#!/bin/bash
#打包所有的log文件
for i in `find /var/log -name "*.log"`
do
	tar -czvf 2018all.tgz $i
done
