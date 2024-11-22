#!/bin/bash

bkpfolder="bkp"

current_date=$(date +"%Y-%m-%d"	)
echo "Текущая дата: $current_date"
countfiles=0

for i in $(find . -maxdepth 1 -type f -printf "%f\n")
do
cp -f $i "$bkpfolder/$current_date""_""$i" >> "$bkpfolder\/bkp.log" 2>&1
if [ -f "$bkpfolder/$current_date""_""$i" ]
then 
echo "LOG $(date +"%Y-%m-%d %H:%M:%S"): File $bkpfolder/$current_date""_""$i has copied" >> "$bkpfolder\/bkp.log"
countfiles=$((countfiles+1))
else 
echo "Error: File $bkpfolder/$current_date""_""$i has not copied" >> "$bkpfolder\/bkp.log"
fi
done

echo "Backup process has completed with $countfiles files"