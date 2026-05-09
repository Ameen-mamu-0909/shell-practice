#!/bin/bash
R="\e[31m"
G="\e[32m"
USERID=&(id -u)
LOGS_FILE="/tmp/installation.log"

yum remove mysql -y
yum install mysql -y &&>> $LOGS_FILE

if [ $? -ne 0 ]; then
 echo "mysql installation successfully....&G" | tee -a $LOGS_FILE
else
 echo "mysql installation failure...&R" | tee -a $LOGS_FILE
fi 
