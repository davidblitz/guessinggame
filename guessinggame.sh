#!/usr/bin/env bash

filecount=$(find . -maxdepth 1 -type f | wc -l)
echo "Number of files in current directory: $filecount"

function get_guess_n_eval {
  read guess
  if [[ $guess -lt $filecount ]]
  then
    echo "too low"
  elif [[ $guess -gt $filecount ]]
  then
    echo "too high"
  else
    echo "correct"
  fi
}

echo "Guess how many files are in the current working directory: "

result=$(get_guess_n_eval)

while [[ $result != "correct" ]]
do
  echo "Unfortunately your guess was $result."
  echo "Guess how many files are in the current working directory: "
  result=$(get_guess_n_eval)
done

echo "Congratulations: you guessed the correct number of files in the current working directory"
