#!/bin/bash
R="\e[31m"
G="\e[32m"
USERID=$(id -u)

yum install mysql -y

if [ $? -eq 0 ]; then
 echo "mysql installation successfully....&G"
else
 echo "mysql installation failure...&R"
fi 
