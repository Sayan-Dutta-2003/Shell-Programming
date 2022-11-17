# Method 1

echo "Enter a string"
str=$1
reversed=""
len=${#str}
for (( i=$len-1; i>=0; i-- ))
do
        reversed="$reversed${str:$i:1}"
done
echo "$reversed"


# Method 2

echo "Enter a string"
str=$1
reversed=""
len=`echo $str | wc -c`
while [ $len -gt 0 ]
do
        b=`echo $str | cut -c $len`
        echo -n $b
        len=`expr $len - 1`
done
