#!/bin/bash

total_files=$(ls -1 | wc -l)

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"

while true; do
    read -p "Enter your guess: " guessed_total
    
    if ! [[ "$guessed_total" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid positive integer."
    elif [[ $total_files -lt $guessed_total ]]; then
        echo "Too high! Try again."
    elif [[ $total_files -gt $guessed_total ]]; then
        echo "Too low! Try again."
    else
        echo "Congratulations! You guessed correctly. There are $total_files files in the current directory."
        break
    fi
done
