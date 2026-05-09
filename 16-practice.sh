#!/bin/bash

USERID=$(id -u)
mkdir ameen

LOG_FILE="/tmp/script.log"

if [ $USERID -ne 0 ]
then
    echo "Please run with root access"
    exit 1
fi
  mkdir -p ameen

dnf install httpd -y &&>> $LOG_FILE

if [ $? -eq 0 ]
then
    echo "Apache Installed Successfully"
else
    echo "Apache Installation Failed"
    exit 1
fi

systemctl enable httpd &&>> $LOG_FILE
systemctl start httpd &&>> $LOG_FILE
systemctl update httpd &&>> $LOG_FILE
systemctl status httpd &&>> $LOG_FILE