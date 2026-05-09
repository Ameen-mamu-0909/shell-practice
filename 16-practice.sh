#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root access"
    exit 1
fi

dnf install httpd -y

if [ $? -eq 0 ]
then
    echo "Apache Installed Successfully"
else
    echo "Apache Installation Failed"
    exit 1
fi

systemctl enable httpd
systemctl start httpd

systemctl status httpd