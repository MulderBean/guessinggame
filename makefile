#/bin/sh

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo $$(date) >> README.md
	echo "   " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
