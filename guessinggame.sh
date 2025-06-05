#! /bin/bash
check_guess() {
total_files=$(ls $(pwd) | wc -l)
while true; do
echo "Can you guess how many files are here?"
read guessed_total

	if ! [[ $guessed_total =~ ^[0-9]+$ ]]; then
		echo "please enter a valid number"
		continue
	elif [[ $total_files -ne $guessed_total ]]; then
		echo "Sorry your guess is too high or too low, Please try to guess again"
	continue
else 
        echo "Congratulation your guess is correct! You are awsome!"
  break
	fi
done
}
check_guess
