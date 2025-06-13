README.md: guessinggame.sh
	echo "# Guessinggame Assigmment\n" >> README.md
	date >> README.md 
	echo >> README.md
	echo -n "Total numbers of files in the current working directory is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
