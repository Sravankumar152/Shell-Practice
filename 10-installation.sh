#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run the script with root user"
    exit 1
else
    echo "Installing nginx"
    dnf install nginx -y
fi