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
    ./scripts/rename_game.sh "CompsSpades" "CompsSpadesB" "CompsSpadesE" "."
    ./scripts/rename_game.sh "compsspades" "compsspadesb" "compsspadese" "."
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