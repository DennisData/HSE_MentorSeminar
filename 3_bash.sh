#!/bin/bash
# Скрипт для загрузки данных из с помощью kinescope-dl
echo -n "Enter the value (integer), please: "
read value
echo "The value is : $value"

if [ $value -gt 0 ]
then
echo "The value > 0"
i=0
iter=1
while [ $i -lt $value ] 
do
i=$((i+iter))
echo "Number $i"	
done
elif [ $value -lt 0 ]; 
then
echo "The value < 0"
elif [ $value -eq 0 ]; 
then
echo "The value == 0"
else
echo "Error"
fi
