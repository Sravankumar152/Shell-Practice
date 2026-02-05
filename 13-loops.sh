#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-logs"
LOGS_FILE="/var/log/shell-logs/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a &>> "$LOGS_FILE"
        exit 1
    else
        echo "$2 ... SUCCESS" | tee -a &>> "$LOGS_FILE"
    fi
}

for package in $@
do
    dnf install $package -y |tee -a &>> "$LOGS_FILE"
    VALIDATE $? "$package installation"
done