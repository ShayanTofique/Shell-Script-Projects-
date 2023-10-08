# Develop a shell script /home/bob/print-month-name.sh that accepts the number of a month as input
# and prints the name of the respective month. eg ./print-month-name.sh 1 should print January and ./print-month-name.sh
# 5 should print May. Also keep these in mind.


# The script must accept a month number as a command line argument.

# If a month number is not provided as command line argument, the script must exit with the message No month number given.

# The script must not accept a value other than 1 to 12. If not the script must exit with the error Invalid month number given.

month_name=$1

if [ -z $month_name ]
then 
  echo "No month number given"
  exit 
fi

if [[ $month_name -lt 1 || $month_name -gt 12 ]]
then
  echo "Invalid month number given"
  exit
fi 

if [ $month_name -eq 1 ]
then 
  echo "January"
elif [ $month_name -eq 2 ]
then 
  echo "Febraury"
elif [ $month_name -eq 3 ]
then 
  echo "March"
elif [ $month_name -eq 4 ]
then 
  echo "April"
elif [ $month_name -eq 5 ]
then 
  echo "May"
elif [ $month_name -eq 6 ]
then 
  echo "June"
elif [ $month_name -eq 7 ]
then 
  echo "July"
elif [ $month_name -eq 8 ]
then 
  echo "August"
elif [ $month_name -eq 9 ]
then 
  echo "September"
elif [ $month_name -eq 10 ]
then 
  echo "October"
elif [ $month_name -eq 11 ]
then 
  echo "November"
elif [ $month_name -eq 12 ]
then 
  echo "December"
fi


