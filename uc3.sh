#!/bin/bash -x
echo "Welcome To The Flip Coin Simulator"

h=0
t=0

function flip()
{
result=$((RANDOM % 2 + 1))
echo "WINNER IS"
if(($result==1))
then
        echo "head"
        let "h=h+1"
else
        echo "tail"
        let "t=t+1"
fi
}

temp=1
while((temp>0))
do
        flip
        if(($h==21))
        then
                head_win_by=$(($h-$t))
                echo "head won by $head_win_by times"
                echo "head is winner"
                exit
        elif(($t==21))
        then
                tail_win_by=$(($t-$h))
                echo "tail won by $tail_win_by times"
                echo "tail is winner"
                exit
        elif(($t==$h))
        then
                echo "head is $h and tail is $t"
                echo "it's a tie"
                exit
        fi
done

