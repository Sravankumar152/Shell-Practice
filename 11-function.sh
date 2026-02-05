#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this as a root user"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "$2 .... failure"
        exit 1
    else
        echo "$2 ... success"
    fi
}

dnf install nginx -y
validate $? "Installing nginx"

dnf install mysql -y
validate $? "Installing mysql"