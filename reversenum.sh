#!/bin/bash/ 
#the shebang


function  reversenum()
{
i=$(($1/10))
if [ $i -lt 0 ]
then 
result= $1
else
n=0
num=$1
until [ $num -eq 0 ]
do
num=$(($num/10 ))
n=$(($n+1))
done
result=""
num=$1
for ((i=1;i<=n;i=i+1))
do
a=$(($num%10))
result=$result$a
num=$(($num/10 ))
done
fi
echo $result
}

read -p "please input a num:" num

test=$(echo $num | sed 's/[0-9]//g')

if [ -z $num ] # judge the num is  blank or not
then 
echo "please not input blank"
elif [ -z $test ] # judge the num is correct or not
then 
#echo $num | rev 
reversenum $num
else 
echo "please input a correct num"
fi


