read -p "please input your del usernaem:" u_name
while :
do
    if [ ${#u_name} = 0 ]
    then
        read -p "please input your del usernaem:" u_name
    else
        break
    fi
done
for i in `cat /etc/passwd |egrep "^$u_name"`
do
    u_uid=`cat /etc/passwd|egrep  "$i" |cut -d ":" -f 3`
    if (( $u_uid>500&&$u_uid<<6000 ))
    then
        userdel -r $i
        echo "用户i 已经被删除了  "
    else
        echo " $i 是系统用户不能删除"
    fi
done
