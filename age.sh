#!/bin/bash

for i in $(echo {1..10})
do
echo " Enter name : " && read name
echo " Enter age : " && read age
if [ $age -le 20 ]
	then 
		echo " Teenager "
			echo "name:"$name "age:"$age >> teen.txt
elif [ $age -ge 50 ]
	then 	
		echo " Old "
			echo "name:"$name "age:"$age >> old.txt
else
	 
		echo " Adult "
			echo "name:"$name "age:"$age >> adult.txt
fi
done


