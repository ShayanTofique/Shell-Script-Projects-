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

case $month_name in 
  1) echo "January" ;;
  2) echo "Febraury" ;;
  3) echo "March" ;;
  4) echo "April" ;;
  5) echo "May" ;;
  6) echo "June" ;;
  7) echo "July" ;;
  8) echo "August" ;;
  9) echo "September" ;;
  10) echo "October" ;;
  11) echo "November" ;;
  12) echo "December" ;;



