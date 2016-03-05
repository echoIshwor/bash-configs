  #!/bin/bash 
#This line causes the script to be run by the bash shell (sh)

echo -e "please enter the animal name \c"
#This line ask the user to enter the animal name

read animal
#This line takes the input from the user

while [ "$animal" !=  "dog" ]
  do 
  echo "You entered the invaid animal name "
  echo "Please enter again "
  read animal

 done 
 #This a while loop which keeps executing until the user inputs animal name DOG
  
 if [ $animal = "dog" ]
 then
  echo -e "Finally you entered the magic name $USER"
 fi
#This statement executes when the loop exists and display some message
 
