#!/bin/bash

echo "***系统管理工具***"



echo -e "1.\t显示磁盘空间的信息"
echo -e "2.\t显示网络接口的信息"
echo -e "3.\t显示内存使用的信息"
echo -e "0.\t退出菜单"

read -p "input your number :" y_num >/dev/null

echo -e "\t\t输入选项: $y_num"
echo "你的选择是$y_num"
