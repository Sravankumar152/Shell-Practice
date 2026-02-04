#!/bin/bash

NUM=60

if [ $NUM -gt 50 ]; then

    echo "The number: $NUM is greater than 50"
elif [ $NUM -eq 50 ]; then

    echo "The Number: $NUM is equal to 50"

else
    echo "The Number: $NUM is less than 50"

fi
