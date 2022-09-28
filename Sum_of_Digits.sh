echo "Enter a Number"
read n
sum=0
while [ $n -gt 0 ]
do
	m=`expr $n % 10`
	sum=`expr $sum + $m`
	n=`expr $n / 10`
done
echo "Sum of digits is $sum"
