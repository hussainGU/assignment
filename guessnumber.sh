#!/bin/bash

number=$((RANDOM % 100 + 1))

guesses=0

while true; do
  read -p "Please guess a number between 1 and 100: " guess

  ((guesses++))

  if [ $guess -eq $number ]; then
    echo "You got it in $guesses guesses."
    break
  fi

  if [ $guess -lt $number ]; then
    echo "$your guess is too low. Try  again."
  else
    echo "$your guess is too high. Try  again."
  fi
done
