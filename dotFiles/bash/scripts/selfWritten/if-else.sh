  #!/bin/bash                           

  # This line causes the script to be interpreted by bash shell

 retirement_age=50 # This is the given variable 

 #Asking user to enter the age of his choice
echo "Please enter the age :"

# This line store the value of age into the age variable
read age 

 if [ "$age" -gt $retirement_age ]
 then 
echo  "The person should now probably retire  "

 else 
 echo   "The person is still quiet young  "

 fi
 #This is a if-else statement which checks the value of age entered by user
