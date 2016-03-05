   #!/bin/bash
  #This line causes the script to be run using bash shell (sh)

  i=1
  count=12
  while [ $i -lt $count ]
  do 
  echo "$USER"
  i=`expr $i + 1 `
 done
