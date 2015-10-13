#!/bin/bash/
n=4
a=1
for ((i=1;i<=4;i=i+1))
 do
  for ((j=1;j<=4-i;j=j+1))
   do
     echo -n " "
   done
   for ((m=1;m<=i;m=m+1))
    do
     echo -n $a" "
     a=$(($a+1))
    done
  echo -e "\n"
  done

