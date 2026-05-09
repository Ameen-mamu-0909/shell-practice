#!/bin/bash
R="\e[31m"
G="\e[31m"
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
   echo "your are root user....$G"
else 
   echo "your are normal user.....$R"
fi   