#!/bin/bash
NUM1=45
NUM2=47

SUM=$((NUM1+NUM2))

echo "Total value: $SUM"


#Array

fruits=("apple" "bananna" "orange")

echo "fruits are: ${fruits[@]}"
echo "first fruit is: ${fruits[0]}"
echo "second fruit is: ${fruits[1]}"
echo "third fruit is: ${fruits[2]}"