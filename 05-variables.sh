#!/bin/bash 

Starttime=$(date +%s)

echo "Script started at:$Starttime"

sleep 20

Endtime=$(date +%s)

echo "Script ended at:$Endtime"

totaltime=($Starttime-$Endtime)

echo "Total time:$totaltime"