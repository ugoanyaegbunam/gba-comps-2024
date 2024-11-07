#!/bin/bash

dev="$1"

echo "Running repository cleanup for '$dev'"

if [ $dev == "ethan" ] 
then 
    ./scripts/rename_game.sh "CompsSpades" "CompsSpadesE" "CompsSpadesB" "."
    ./scripts/rename_game.sh "compsspades" "compsspadese" "compsspadesb" "."
fi 

if [ $dev == "leo" ] 
then 
<<<<<<< HEAD
    ./scripts/rename_game.sh "CompsSpades" "CompsSpadesB" "CompsSpadesE" "."
    ./scripts/rename_game.sh "compsspades" "compsspadesb" "compsspadese" "."
=======
    ./scripts/rename_game.sh "CompsSpadesB" "CompsSpadesB" "CompsSpadesE" "."
    ./scripts/rename_game.sh "CompsSpades" "CompsSpades" "CompsSpadesE" "."
    ./scripts/rename_game.sh "compsspadesb" "compsspadesb" "compsspadese" "."
    ./scripts/rename_game.sh "compsspades" "compsspades" "compsspadese" "."
>>>>>>> 15af4b3f063aedbb7eb335280922fbf08dd670fe
fi 

if [ $dev == "jonathan" ] 
then 
    ./scripts/rename_game.sh "CompsSpades" "CompsSpadesD" "CompsSpadesC" "."
    ./scripts/rename_game.sh "compsspades" "compsspadesd" "compsspadesc" "."
fi 

if [ $dev == "ugo" ] 
then 
    ./scripts/rename_game.sh "CompsSpades" "CompsSpadesC" "CompsSpadesD" "."
    ./scripts/rename_game.sh "compsspades" "compsspadesc" "compsspadesd" "."
fi 

if [ $dev == "main" ] 
then 
    ./scripts/rename_game.sh "CompsSpadesD" "CompsSpadesC" "CompsSpades" "."
    ./scripts/rename_game.sh "CompsSpadesE" "CompsSpadesB" "CompsSpades" "."
    ./scripts/rename_game.sh "compsspadesd" "compsspadesc" "compsspades" "."
    ./scripts/rename_game.sh "compsspadese" "compsspadesb" "compsspades" "."
fi 