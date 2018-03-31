all: project_title date line_count

project_title:
	echo "# Guessing Game Project" > README.md

date:
	echo "Date and Time of last run of make: \n" >> README.md
	date >> README.md
	echo "\n\n"

line_count:
	echo "Lines Of Code in guessinggame.sh: \n" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "\n"
