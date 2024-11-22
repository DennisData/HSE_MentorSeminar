#!/bin/bash
# Скрипт для загрузки данных из с помощью kinescope-dl
fileslist=$(ls -pF)
check="не существует"

for i in $fileslist
do
echo $(ls -l $i)

if [ -e $1 ]
then
check="существует"
fi
done

echo "Файл" $1 $check
