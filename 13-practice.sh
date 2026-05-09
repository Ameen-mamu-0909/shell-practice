#!/bin/bash

R="\e[31m"
G="\e[32m"
USERID=&(id -u)
LOGS_FILE="/tmp/installation.log"

if [ $USERID -ne 0 ];then
 echo "please run this code root::privilage'
exit 1

VALIDATE () {
         if [ $? -eq 0 ]; then
             echo "mysql installation successfully....&G" | tee -a $LOGS_FILE
        else
             echo "mysql installation failure...&R" | tee -a $LOGS_FILE
fi 
}

yum remove mysql-server -y &&>> $LOGS_FILE
VALIDATE $? "removing mysql server"
yum install mysql -y &&>> $LOGS_FILE
VALIDATE $? "installing mysql server"