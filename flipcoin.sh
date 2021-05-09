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
