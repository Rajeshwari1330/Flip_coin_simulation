#!/bin/bash -x
echo "Welcome To The Flip Coin Simulator"
function flip()
{
result=$((RANDOM % 2 + 1))
}

flip

echo "WINNER IS"
if(($result==1))
then
        echo "head"
else
        echo "tail"
fi
