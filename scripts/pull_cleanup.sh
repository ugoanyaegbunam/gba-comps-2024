#!/bin/bash

dev="$1"

echo "Running repository cleanup for '$dev'"

if [ $dev == "ethan" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesE" "CompsSpadesB"
fi 

if [ $dev == "leo" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesB" "CompsSpadesE"
fi 

if [ $dev == "jonathan" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesD" "CompsSpadesC"
fi 

if [ $dev == "ugo" ] 
then 
    ./rename_game.sh "CompsSpades" "CompsSpadesC" "CompsSpadesD"
fi 