#!/bin/bash
screen -dmS "expect"
for i in {1..10}
do
    screen -S "expect" -X screen -t "exp$i" bash -c "./pottest.sh $i; read x"
done

