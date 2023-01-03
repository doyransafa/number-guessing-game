#!/bin/bash

N=$(( RANDOM % 1001 ))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Random number is $N
echo Enter your username:
read USERNAME

#APPEND_USERNAME=$($PSQL ";")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME' ;")



# If username used before, print out previous results
if [[ ! -z "$USER_ID" ]]
then
  GAMES_PLAYED=$($PSQL "SELECT COUNT($USER_ID) FROM games WHERE user_id=$USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(num_of_guesses) FROM games WHERE user_id=$USER_ID;")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
# username is new, greet
else
  echo Welcome, $USERNAME! It looks like this is your first time here.
  APPEND_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME' ;")
fi


echo Guess the secret number between 1 and 1000:
read GUESS
NUM_OF_GUESSES=1
if [[ $GUESS == $N ]]
then
echo "You guessed it in $NUM_OF_GUESSES tries. The secret number was $N. Nice job!"
APPEND_GAME_DETAILS=$($PSQL "INSERT INTO games(user_id, num_of_guesses) VALUES('$USER_ID', '$NUM_OF_GUESSES');")
elif [[ ! $GUESS =~ ^[0-9]+$ ]]
then
echo That is not an integer, guess again:
else
  while [[ $GUESS != $N ]] 
  do
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo That is not an integer, guess again:
      read GUESS
    elif [[ $GUESS -lt $N ]]
    then
      echo "It's higher than that, guess again:"
      read GUESS
      ((NUM_OF_GUESSES+=1))
    elif [[ $GUESS -gt $N ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
      ((NUM_OF_GUESSES+=1))
    fi
  done
echo "You guessed it in $NUM_OF_GUESSES tries. The secret number was $N. Nice job!"
APPEND_GAME_DETAILS=$($PSQL "INSERT INTO games(user_id, num_of_guesses) VALUES('$USER_ID', '$NUM_OF_GUESSES');")
fi