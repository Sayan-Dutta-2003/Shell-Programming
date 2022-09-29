echo "Enter a Number"
read n

temp=$n

sum=0
product=1

while [ $n -gt 0 ]
do
        rem=`expr $n % 10`

        sum=`expr $sum + $rem`
        product=`expr $product \* $rem`

        n=`expr $n / 10`
done

if [ $sum -eq $product ]
then
        echo "$temp is a Spy Number"
else
        echo "$temp is not a Spy Number"
fi

