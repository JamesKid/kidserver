#!/bin/bash
######################### KidServer ###########################
#
#  Description: 本脚本安装基础软件 
#  Tips:　　　　可在basic_soft.txt  中配置需要用到的软件
#
###############################################################
source lib/file.sh  #  引用文件库函数.  也可以用 sh 和. 进行引入

softListPath="conf/basic_soft.txt"  # 安装软件列表
# install soft
function installSoft(){
    for i in `cat $1`
    do
        yum install $i -y
    done
}

installSoft $softListPath
