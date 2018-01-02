#!/bin/bash
user=www-data
group=www-data

www_path=/data/www
nginx_log_path=/data/logs/nginx
nginx_error_logs_path=$nginx_log_path/error.log

if [ ! -d $www_path ]
then
    mkdir -p $www_path
fi

if [ ! -d $nginx_log_path ]
then
    mkdir -p $nginx_log_path
fi

if [ ! -f $nginx_error_logs_path ]
then
    touch $nginx_error_logs_path
fi

#create group if not exists  
egrep "^$group:" /etc/group >& /dev/null  
if [ $? -ne 0 ]
then  
    groupadd $group
fi  

#create user if not exists  
egrep "^$user:" /etc/passwd >& /dev/null  
if [ $? -ne 0 ]  
then  
    useradd -g $group $user  
fi

usermod -a -G $user $group

chown -R $user:$group $nginx_log_path

chown -R $user:$group $www_path