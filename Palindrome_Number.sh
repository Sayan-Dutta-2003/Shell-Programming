echo "Enter a Number"
read n
temp=$n
rev=0
while [ $temp -gt 0 ]
do
	m=`expr $temp % 10`
	rev=`expr $rev \* 10`
	rev=`expr $rev + $m`
	temp=`expr $temp / 10`
done
if [ $rev -eq $n ]
then
	echo $n "is a Palindrome Number"
else
	echo $n "is not a Palindrome Number"
fi
