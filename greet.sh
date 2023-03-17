#!/bin/bash

hour=$(date +%H)

if [ $hour -lt 12 ]; then
  greeting="Good morning"
elif [ $hour -lt 18 ]; then
  greeting="Good afternoon"
else
  greeting="Good evening"
fi

current_time=$(date +"%I:%M %p, %A %b %d, %Y")
shell=$SHELL
user=$USER


echo "$greeting, $user"
echo "Your shell is $shell."
echo "The current time is $current_time."
