#!/bin/bash

echo "Enter Time/AM*PM/Game: "
read UserString
substr1=$(echo $UserString | cut -d' ' -f 3) #I had to cut the input by the user and distribute the sections into new variables.
#substr2=$(echo $UserString | cut -d' ' -f 1)
substr3=$(echo $UserString | cut -d' ' -f 1)
substr4=$(echo $UserString | cut -d' ' -f 2)
#echo $substr3
#echo $substr1
#echo $substr2
#echo $substr4
printf "==============================================\n"
printf "%-8s %-3s %-15s\n" "Time 	"       	"Dealer Name"

case $substr1  in
   Texas)
    fname=7;
    	lname=8;
    ;;
   BlackJack)
    fname=3;
    lname=4;
    ;;
   Roulette)
    fname=5
    lname=6
    ;;
   *)
    echo 'Supply a valid Game name.' >&2
    	exit 1
    ;;
esac

cat $1_Dealer_schedule | awk -v c1=$fname -v c2=$lname -F" " '{print $1, $2, $c1, $c2}' | grep $substr3 | grep -i $substr4

#awk -F":" '
#BEGIN (
#printf "====================================================="
#printf "%-8s %-3s %-3s %-15s\n","Time","AM/PM", "Dealer Name"
#printf "===================================================="
# )
#NR==1,NR==10( printf "%-8s %-3s %-3s %-15s\n",$1,$2,$3,$4,) ' cat $1_Dealer_schedule

#if [ $4 = "Texas" ]; then
#    fname=7;
#    lname=8;

#elif [ $4 = "BlackJack" ]; then
#    fname=3;
#    lname=4;
#elif [ $4 = "Roulette" ]; then
#    fname=5
#    lname=6
#else
#    fname=5
#    lname=6
#fi

#cat $1_Dealer_schedule | awk -v c1=$fname -v c2=$lname -F" " '{print $1, $2, $c1, $c2}' | grep $2 | grep -i $3
