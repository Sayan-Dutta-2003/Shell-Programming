echo "Enter a number"
read a
i=1
sum=0
while [ $i -lt $a ]
do
	if [ `expr $a % $i` -eq 0 ]
	then
		sum=`expr $sum + $i`
	fi
	i=`expr $i + 1`
done
if [ $a -eq $sum ]
then
	echo $a" is a perfect Number"
else
	echo $a" is not a perfect number"
fi
