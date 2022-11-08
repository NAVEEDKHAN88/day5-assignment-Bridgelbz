#!/bin/bash -x

echo "Enter the size(N)"
read N

i=1
max=0
min=0

while [ $i -le $N ]
do
 num=$(shuf -i 100-1000 -n1)
 echo $num

if [ $num -gt $max ]
then
max=$num
fi


if [ $i -eq 1 ]
then
min=$num
else
if [ $num -lt $min ]
then
min=$num
fi
 fi
   i=$((i + 1 )) # increment i by 1
done

echo "maximum number is :" $max
echo "minimum number is :" $min



