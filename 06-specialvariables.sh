#!/bin/bash

###special variables

echo "all args passed through scripts: $@"
echo "No of variables passed: $#"
echo "Script name: $0"
echo "Present directory: $pwd"
echo "Who is running: $user"
echo "Home directory of current user $HOME"
echo "PID of the script: $$"
sleep 20 &
echo "PID of recently executed script: $!"
echo "All args passed through script: $*"