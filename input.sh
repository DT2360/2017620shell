#!/bin/bash

#function:input number remind<提醒>

read -n 8 -t 10 -s -p "please input your passwd :" u_pwd

if echo $u_pwd |egrep [A-Z] ;then
	echo "the output some in capital letters 输入的密码有大写字母"
		if echo $u_pwd |egrep [a-z] ;then
			echo "the output of some in uppercase and lowercase letters 输出的包含大小写字母"
				if echo $u_pwd |egrep [0-9] ;then
				echo "the output of some in uppercase and lowercase letters and number  输出的密码有大小写和数字 "
			else
				echo "the output some no number 输入的密码没有数字 " 
			fi
			else
			echo "the output some no lowercase letter 输入的密码没有小写字母"
		fi
else
	echo "the output some no capital letters 输入的密码没有大写字母"
fi

