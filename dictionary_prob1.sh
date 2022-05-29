dictionary[1]=0
dictionary[2]=0
dictionary[3]=0
dictionary[4]=0
dictionary[5]=0
dictionary[6]=0
max_count=10
while(( 10 ))
do
    res=$(( RANDOM % 6 + 1 ))
    (( dictionary[$res]++))

    if(( dictionary[$res] == max_count))
    then
        break
    fi
done 
most_frequent_number=$(( 1+RANDOM % 6 ))
least_frequent_number=$(( 1+RANDOM % 6 ))

echo " corresponding frequencies are:"
echo ${!dictionary[@]}
for number in ${!dictionary[@]}
do

    if(( dictionary[$number] >= dictionary[$most_frequent_number] ))
    then
        most_frequent_number=$number
    fi

    if(( dictionary[$number] <= dictionary[$least_frequent_number] ))
    then
        least_frequent_number=$number
    fi

    echo $number " " ${dictionary[$number]}
done

echo " maximum times is $most_frequent_number"
echo "minimum times is $least_frequent_number"
