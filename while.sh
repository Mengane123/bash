#!/bin/bash
#set -x
count=0
#read -p "enter number till you want counting: " $num

num=20

while [[ $count -le $num ]]
do
	echo "Numbers are $count"
	let count++

done
