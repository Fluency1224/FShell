#########################################################################
# File Name: find.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月08日 星期五 11时48分50秒
#########################################################################
#!/bin/bash
# find . -name "文件名"                     查找某文件
# find . -maxdepth 1 -name "文件名"         只在第一级目录查找某文件
# find . -maxdepth 1 -type f                只在第一级目录只查找类型为文件的
# find . -maxdepth 1 -type f -mtine +30     只在第一级目录只查找类型为文件的30天以前的
# find . -maxdepth 1 -type f -mtine +30 -exec rm -rf 文件名  -exec 进行进一步操作

