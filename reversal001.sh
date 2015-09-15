
#!/bin/bash/

read -p 'please input a number:' num
 test=$(echo $num | sed 's/[0-9]//g') 

result=''
n=1
m=0


if [ -z $num ]
 then  echo 'please do not input  blank'
 exit 1
elif [ -z $test ]
 then 
   j=$num
   j=$(($j/10))
 if [ $j -eq 0 ]
  then
   n=1
 else
  until [ $j -eq  0 ]
  do
  n=$(($n+1))
  j=$(($j/10)) 
  done
 fi
else 
 echo 'please  input a integer number '
 exit 2
 fi

if [ $n -eq 1 ]
 then 
  result=$num
else  
  for((i=1;i<=n;i=i+1))
   do
   m=$(($num%10))
   result=$result$m
   num=$(($num/10))
   done
fi

echo $result


