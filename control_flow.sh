#!/bin/bash 

# Prompt the User for a Number

read -p "Enter a number: " num 

echo "You have entered the number $num"

# Let the user know the type of number they have enter (Either Positive, Negative, or Zero) 

if [ $num -gt 0 ]; then 
	echo "The number is positive." 
elif [ $num -lt 0 ]; then 
        echo "The number is negative."
else
	echo "The number is zero."
fi
 
