#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
   echo "please run with root access"
exit 1

dnf install httpd -y

if [ $? -eq 0 ]; then
    echo "Apache Installation is success..."
esle 
    echo "Apache Iinstallation is failure.."
    exit 1
fi
 
 systemctl enable httpd
 systemctl start httpd

 systemctl status httpd





