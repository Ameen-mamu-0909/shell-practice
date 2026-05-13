#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please rum with root privilage"
   exit 1
fi

if [ &? -eq 0 ];then
  echo "port 80 is active"
else 
  echo "port 80 is not active"
fi  

