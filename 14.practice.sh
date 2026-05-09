#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
   echo "your are root user"
else 
   echo "your are normal user"
fi   