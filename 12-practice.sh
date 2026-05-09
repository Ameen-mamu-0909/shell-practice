#!/bin/bash

FILE="ameen.txt"
LOG_FILE="logs.txt"

touch $FILE

if [ $? -ne 0 ]; then
    echo "$FILE created successfully" | tee -a $LOG_FILE
else
    echo "Failed to create $FILE" | tee -a $LOG_FILE
fi