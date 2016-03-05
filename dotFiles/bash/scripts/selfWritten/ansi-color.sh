   


   #!/bin/bash
 
  #this script shows the use of color manipulation in texts 
  #ANSI way 
  flash="\033[5;32;43m"
  color="\033[32;43m"
  none="\033[0m"

   echo -e $flash"CRAP: "$none$color"This is stupid."$none


  echo 
  echo 
  echo
  echo

  flash=$(tput setab 4;tput setaf 5; tput blink)
  color=$(tput setab 4;tput setaf 5)
  none=$(tput sgr0)
   echo -e $flash"CRAP: "$none$color"This is stupid."$none

