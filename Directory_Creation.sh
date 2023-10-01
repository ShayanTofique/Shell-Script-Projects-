
#!/bin/bash 
echo "Welcome to Directory Creation" 
echo 

read -p "Enter Directory Name :" dir_name
echo
read -p "Enter Directory path :" dir_path 
echo

if [ -z "$dir_path" ]; then 
	dir_path="./"
fi

if [ -d "$dir_path/$dir_name" ]; then 
	echo " Directory $dir_name already exist in $dir_path "
	exit 1
fi 

mkdir -p "$dir_path/$dir_name"

if [ $? -eq 0 ]; then 
  echo "$dir_name is created in $dir_path "
else
  echo "Failed to create $dir_name in $dir_path"
fi 
