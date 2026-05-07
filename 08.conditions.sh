#!/bin/bash

echo "Enter a number"
read num

if [ $((NUMBER % 2)) -eq 0]; then
 echo "given number $NUMBER is even"
esle 
  echo"given number $NUMBER is odd"
fi 