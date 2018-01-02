#!/bin/bash
#user=mysql
#group=mysql
#data_dir=/data/mysql
#install_log_path=/var/log/mysql/install.log

#if [ ! -d $data_dir ]
#then
#    mkdir -p $data_dir
#fi

#create group if not exists  
#egrep "^$group:" /etc/group >& /dev/null  
#if [ $? -ne 0 ]
#then  
#    groupadd $group
#fi  

#create user if not exists  
#egrep "^$user:" /etc/passwd >& /dev/null
#if [ $? -ne 0 ]  
#then  
#    useradd -g $group $user
#fi

#usermod -a -G $user $group

#usermod -u 3306 mysql
#groupmod -g 3306 mysql

#find / -user 999 -exec chown -h mysql {} \; 2> $install_log_path
#find / -group 999 -exec chgrp -h mysql {} \; 2> $install_log_path

#chown -R $user:$group $data_dir