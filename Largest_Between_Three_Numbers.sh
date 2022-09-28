echo "Enter three numbers"
read a
read b
read c
if [ $a -gt $b -a $a -gt $c ]
then
	echo $a" is the largest"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo $b" is the largest"
elif [ $c -gt $a -a $c -gt $b ]
then
	echo $c" is the largest"
else
	echo "All the numbers are equal"
fi
