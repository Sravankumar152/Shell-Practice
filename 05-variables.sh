#!/bin/bash 

Starttime=$(date)

echo "Script started at:$Starttime"

sleep 20

Endtime=$(date)

echo "Script ended at:$Endtime"

totaltime=($Starttime-$Endtime)

echo "Total time:$totaltime"