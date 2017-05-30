#!/bin/bash

read -p "请输入删除的用户名的前缀：" u_name
if [[ ${#u_name} == 0 ]] 
then   
read -p "请输入正确的用户名前缀，而不是输入空的：" u_name
else
while :
do
	if ! cat /etc/passwd |egrep $u_name
	then
		echo "用户名前缀不对"
		break
	else
for i in `cat /etc/passwd|egrep "^$u_name" |cut -d ":" -f1`
do
u_uid=`cat /etc/passwd|egrep "\b^$i\b"|cut -d ":" -f 3`
if (( $u_uid >= 500 && $u_uid <= 60000 ))
then
echo "$i"
read -p "是否选择提示性删除：(y/n)" yes
if [[ $yes = "y" ]]
then
read -p "是否删除$i(y/n)" yn

if [[ $yn = "y" ]]
then
userdel -r $i
echo "$i 现以被删除了"
else 
echo "$i 是你不想删除的用户"
fi
else
userdel -r $i
fi
else
echo "$i 是系统用户不能删的"
fi
done
break
fi
done
fi
