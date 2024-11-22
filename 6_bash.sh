#!/bin/bash

echo "Read file input.txt:"
cat 6_bash/input.txt

echo "\nWrite count lines to output.txt"
wc -l 6_bash/input.txt > 6_bash/output.txt

echo "\nRead file output.txt:"
cat 6_bash/output.txt

echo "\nls file undefined_file:"
ls -l undefined_file > 6_bash/error.log 2>&1

echo "\nRead file error.log:"
cat 6_bash/error.log
