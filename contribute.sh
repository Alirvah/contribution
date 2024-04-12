#!/bin/bash

random_number=$(( RANDOM % 100 ))
iterations=$((1 + RANDOM % 5))

if [ $random_number -lt 40 ]; then
  for ((i=1; i<=iterations; i++))
  do
        cd $HOME/contribution
        echo "$(date)" >> contributions
        git commit -am "$(date)"
        git push
  done
fi