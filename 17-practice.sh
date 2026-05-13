#!/bin/bash

netstat -lntp | grep 80

if [ &? -eq 0 ];then
  echo "port 80 is active"
else 
  echo "port 80 is not active"
fi  

yum install giy -y