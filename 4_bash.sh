#!/bin/bash
echo "Start 1 function with name $1"
./4_bash_hello.sh $1
echo "Start 2 function with $2 and $3"
./4_bash_sum.sh $2 $3
