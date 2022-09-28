echo "Enter the size of the Array"
read n

echo "Enter $n Elements"
for (( i=0; i<$n; i++ ))
do
        read a[$i]
done

echo "Unsorted Array"
for (( i=0; i<$n; i++ ))
do
        echo ${a[$i]}
done

firstLoop=`expr $n - 1`

for (( i=0; i<$firstLoop; i++ ))
do
        secondLoop=`expr $n - $i - 1`
        for (( j=i; j<$secondLoop; j++ ))
        do
                var=`expr $j + 1`
                if [ ${a[$j]} -gt ${a[$var]} ]
                then
                        temp=${a[$j]}
                        a[$j]=${a[$var]}
                        a[$var]=$temp
                fi
        done
done
echo "Sorted Array"
for (( i=0; i<$n; i++ ))
do
        echo ${a[$i]}
done
