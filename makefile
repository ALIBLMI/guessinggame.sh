# Définitions
README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\nDate et heure d'exécution : $$(date)" >> README.md
	echo "\nNombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
