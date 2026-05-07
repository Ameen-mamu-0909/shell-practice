#!/bin/bash

echo "Enter a number"
read NUMBER

if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "given number $NUMBER is even"
else
    echo "given number $NUMBER is odd"
fi

yum install mysql -y

if [ $? -eq 0 ]; then
  echo "installation mysql is successful"
else
  echo "installation myswl if failure"
  fi   