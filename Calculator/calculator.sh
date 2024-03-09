while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choice: " choice
  
  if [ $choice -eq 1 ]
  then 
          read -p "Enter Number1 :" Number1
          read -p "Enter Number2 :" Number2
          echo "Answer=$((Number1 + Number2))"
  elif [ $choice -eq 2 ]
  then 
          read -p "Enter Number1 :" Number1
          read -p "Enter Number2 :" Number2
          echo "Answer=$((Number1 - Number2))"
  elif [ $choice -eq 3 ]
  then 
          read -p "Enter Number1 :" Number1
          read -p "Enter Number2 :" Number2
          echo "Answer=$((Number1 * Number2))"
  elif [ $choice -eq 4 ]
  then 
          read -p "Enter Number1 :" Number1
          read -p "Enter Number2 :" Number2
          echo "Answer=$((Number1 / Number2))"
  elif [ $choice -eq 5 ]
  then 
     break 
  fi 
done 
  
  
