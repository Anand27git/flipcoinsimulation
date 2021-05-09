#! /bin/bash -x

echo "welcome to the flip coin simulation"


for((i=0; i<10; i++))
do
toss=$((RANDOM%2))

if [[ toss -eq 0 ]]
then
echo "Head is winner"
else
echo "tail is winner"
fi
done

#counting
headCount=0
tailCount=0
while [[ $headCount -le 20 && $tailcount -le 20 ]]
do
flip=$((RANDOM%2))
if [[ flip -eq 0 ]]
then
headCount=$((headCount+1))
else
tailCount=$((tailCount+1))
fi
done
if [[ $headCount -le 20 ]]
then
echo "Head wins"
echo "tailCount was $tailCount"
else
echo "Tail wins"
echo "Head Count was $headCount"
fi

#uc--4
declare -A coin

	echo "${coin[@]}"
read -p "enter you call 0(HEAD) and 1 (Tail):"choice
i=0
while [[ $((coin['Heads'])) -lt 21 || $((coin ['Tails'])) -lt 21 ]]
do
toss=$((RANDOM%2))
if [[ $toss -eq 0 ]] ;
 then
	coin['Heads']=$((coin['Heads'] + 1))
else
        coin['Tails']=$((coin['Tails'] + 1))
fi
(( i++ ))
done

echo "Keys: ${!coin[@]}"
echo "Values: ${coin[@]}"

if [[ $((coin['Heads'])) -eq $((coin['Tails'])) ]]
then
echo "Its a Draw, Lets toss some more times."
i=0
while [[ $(( $((coin['Heads']))-$((coin['Tails'])) )) -lt 2 && $(( $((coin['Tails']))-$((coin['Heads'])) )) -lt 2 ]];
do 
toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]];
then
coin['Heads']=$((coin['Heads'] + 1 ))
else
coin['Tails']=$((coin['Tails'] + 1 ))
fi
((i++))
done
if [[$((coin['Heads'])) -gt $((coin['Tails'])) && choice -eq 0 ]]
then
	echo"Player1 won by $(( $((coin['Heads'}))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]
then
	echo "Player1 won by $(( $((coin['Heads']))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 1 ]]
then
echo "Player1 won by $(($((coin['Heads'}))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Tails'])) -gt $((coin['Heads'])) && $choice -eq 0 ]]
then
echo "player2won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
else
echo "Player2won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
fi
