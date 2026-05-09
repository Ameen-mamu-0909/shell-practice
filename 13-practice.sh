#!/bin/bash
R="\e[31m"
G="\e[32m"
LOGS_FILE="logs.txt"
USERID=$(id -u)

yum install mysql -y

if [ $? -ne 0 ]; then
 echo "mysql installation successfully....&G" | tee -a logs.txt
else
 echo "mysql installation failure...&R" | tee -a logs.txt
fi 
