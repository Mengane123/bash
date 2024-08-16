#!/bin/bash

#taking input 
read -p "Enter the file name : " file_name

#finding the file 
file_path= `find "/home/prashant" -name "$file_name"`
#2>/dev/null will not display the errors/permission denied 

##checking if file is found
if [[ -z $file_path ]];then
	echo "file '$file_name' does not exits"
else
	echo "File path(s) is : "
	echo "$file_path"

fi

# check to push changes 