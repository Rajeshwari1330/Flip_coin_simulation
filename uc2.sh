#!/bin/bash -x
echo "Welcome To The Flip Coin Simulator"

h=0
t=0

echo "enter how many times you want to play the game"
read n

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

temp=0
while(($temp!=$n))
do
        flip
        if(($result==1))
        then
                echo "head won $h times"
        elif(($result==2))
        then
                echo "tail won $t times"
        fi
let "temp=temp+1"
done

echo "final result : head won $h times"
echo "final result : tail won $t times"

