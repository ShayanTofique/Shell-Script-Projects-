#!/bin/bash

# Title
echo "*************************** SHELL SCRIPTING ***************************"

# Ask for user's name
echo "Please Enter Your Name: "
read name
echo

# Greeting
echo "********* Hi $name - Please see the detailed server status below *********"
echo " ***************************************************************************"
echo

# Display Current Date and Time
echo " **************************** Current Date and Time *************************"
date | awk ' {print "Today is: " $3 " - " $2 " ; Day = "$1 " ; Time: " $4 }'
echo

# Disk Space Available
echo " *************************** Disk Space Available **************************"
df -H | xargs | awk '{print "Disk Space Available: " "Free Used: "$10 "/" $9 " :GB" }'
echo

# User Uptime
echo " ******************************* User Uptime *******************************"
uptime | awk '{print $1 " / " $3 "" $4}'
echo

# Last 3 Login Details
echo " ************************ Last 3 Login Details **************************"
last | head -3
echo

# Currently Connected User
echo " **************************** Currently Connected *************************"
whoami
echo

# End
echo "******************************************* END *****************************"

