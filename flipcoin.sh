#! /bin/bash -x

echo "welcome to the flip coin simulation"

toss=$((RANDOM%2))

if [[ toss -eq 0 ]]
then
echo "Head is winner"
else
echo "tail is winner"
fi
