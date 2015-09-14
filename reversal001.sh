
#!/bin/bash/

read -p 'please input a number:' num
 test=$(echo $num | sed 's/[0-9]//g') 
# if [ -n test ]
#  then echo $test
# else 
 #echo $test
# fi
#
i=1
result=0
n=0

#if [ -z $num ]
# then  echo 'please not input  blank'
# exit 1
#elif [ -n $test ] 
# then  echo 'please  input a integer number '
# exit 2
#else
#   i=$(num%10)
# fi


if [ -z $num ]
 then  echo 'please do not input  blank'
 exit 1
elif [ -z $test ]
 then 
   j=$num
   j=$(($j/10))
else 
 echo 'please  input a integer number '
 exit 2
 fi

if [ $j -eq 0 ]
 then result=$num
   echo $result
   exit 3 
else
   i=$(($num%10 ))
   num=$(($num/10))
   result=$i
 if [ $i -eq 0 ]
   then
   while [ $i -eq 0  ]
    do
      n=$(($n+1))
      num=$(($num/10)) 
      i=$(($num%10))
    done
      for(( a=1;a<=n;a=a+1 ))
        do
        result=$result'0'
        done
      result=$result$i
     exit 4
  else 
   until [ $i -eq  0 ]
    do
   if [ $num -lt 10 ]
    then 
    result=$(($result*10+$num))
    echo $result 
    exit 5
   else 
    i=$(($num % 10))
    result=$(($result*10+$i))
    num=$(($num/10))
   fi   
  done
 fi
fi 
 echo $result 
