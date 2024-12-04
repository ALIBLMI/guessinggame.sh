#!/bin/bash

# Fonction pour demander le nombre de fichiers
function guess_files {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess
    file_count=$(ls -1 | wc -l)

    while [[ $guess -ne $file_count ]]; do
        if [[ $guess -lt $file_count ]]; then
            echo "Trop bas. Essayez à nouveau :"
        else
            echo "Trop haut. Essayez à nouveau :"
        fi
        read guess
    done

    echo "Félicitations ! Vous avez deviné correctement. Il y a $file_count fichiers."
}

# Exécution de la fonction
guess_files
