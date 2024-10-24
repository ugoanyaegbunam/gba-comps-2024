#!/bin/bash

dev="$1"

echo "Running repository cleanup for '$dev'"

if [ $dev == "ethan" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesE" "CompsSpadesB"
    ./rename_game.sh "compsspades" "compsspadese" "compsspadesb"
fi 

if [ $dev == "leo" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesB" "CompsSpadesE"
    ./rename_game.sh "compsspades" "compsspadesb" "compsspadese"
fi 

if [ $dev == "jonathan" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesD" "CompsSpadesC"
    ./rename_game.sh "compsspades" "compsspadesd" "compsspadesc"
fi 

if [ $dev == "ugo" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesC" "CompsSpadesD"
    ./rename_game.sh "compsspades" "compsspadesc" "compsspadesd"
fi 