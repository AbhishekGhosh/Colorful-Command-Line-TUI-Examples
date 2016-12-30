#!/bin/bash
OPTION=$(whiptail --title "The Customize Windows" --menu "Choose your option" 15 60 4 \
"1" "Liked this website" \
"2" "Disliked this website" \
"3" "Neither liked or disliked this website" \
"4" "I do not know!"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your chosen option:" $OPTION
else
    echo "You chose Cancel."
fi
