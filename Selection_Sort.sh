echo "Enter the size of the array"

read n

echo "Enter the elements of the array"

for ((i = 0; i < n; i++))
do
    read arr[$i]
done

echo "Unsorted Array:"

for ((i = 0; i < n; i++))
do
    echo ${arr[$i]}
done

for ((i = 0; i < n - 1; i++))
do

    small=${arr[$i]}

    index=$i

    for ((j = i + 1; j < n; j++))
    do

        if ((arr[j] < small))
        then

            small=${arr[$j]}

            index=$j

        fi

    done

    temp=${arr[$i]}

    arr[$i]=${arr[$index]}

    arr[$index]=$temp

done

echo "Sorted Array:"

for ((i = 0; i < n; i++))

do

    echo ${arr[$i]}

done

