echo "Enter a number"
read n
count=0
for (( i=2; i*i<=n; i++ ))
do
	rem=`expr $n % $i`
	if [ $rem -eq 0 ]
	then
		count=`expr $count + 1`
	fi
done
if [ $count -eq 0 ]
then
	echo $n "is a Prime Number"
else
	echo $n "is not a Prime Number"
fi
