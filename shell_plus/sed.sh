#########################################################################
# File Name: sed.sh
# Author: fluency
# mail: 1005068694@qq.com
# Created Time: 2018年06月08日 星期五 11时03分18秒
#########################################################################
#!/bin/bash
# sed 命令操作
# sed 's/源/目的/g' 文件名     把文件中的源替换成目的(预替换)
# sed -i 's/源/目的/g' 文件名  把文件中的源替换成目的(加-i才会真的替换)
# sed '/源/a目的' 文件名       在源字符的后面添加目的字符
# sed '/源/i目的' 文件名       在源字符的前面添加目的字符
# sed 's/^/&目的/g' 文件名     在每行/^(行首) 添加目的字符
# sed 's/$/&目的/g' 文件名     在每行/$(行尾) 添加目的字符
# sed -n '/查找字符/p' 文件名  查找字符所在并print打印
# sed -n '1,5p' 文件名         打印1-5行
# 
