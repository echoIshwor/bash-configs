#!/bin/bash
#This line runs script intrepreted by using bash shell 

 who | while read user term time 
 do
 echo $user has been on $term since $time 
done
