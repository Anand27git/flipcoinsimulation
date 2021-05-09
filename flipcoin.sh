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
