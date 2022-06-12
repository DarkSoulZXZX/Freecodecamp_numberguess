#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

secret_number=$((1+ $RANDOM % 1000))
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT USER_ID FROM USERS WHERE USERNAME='$USERNAME'")
if [[ -z $USER_ID ]]
  then
    CREATE_USER_RESULT=$($PSQL "INSERT INTO USERS (USERNAME) VALUES ('$USERNAME')")
    USER_ID=$($PSQL "SELECT USER_ID FROM USERS WHERE USERNAME='$USERNAME'")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
  games_played=$($PSQL "SELECT COUNT(*) FROM GAMES WHERE USER_ID=$USER_ID")
  best_game=$($PSQL "SELECT MIN(SCORE) FROM GAMES WHERE USER_ID=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $games_played games, and your best game took $best_game guesses."
fi

echo "Guess the secret number between 1 and 1000:"
number_of_guesses=0
read GUESS
number_of_guesses=$(($number_of_guesses+1))
while [[ $GUESS != $secret_number ]]
do
  if [[ $GUESS == ?(-)+([0-9]) ]]
    then
    if [[ $secret_number < $GUESS ]]
      then
        echo "It's lower than that, guess again:"
    else 
      echo "It's higher than that, guess again:"
    fi
  else 
    echo "That is not an integer, guess again:"
  fi
  echo $secret_number
  number_of_guesses=$(($number_of_guesses+1))
  read GUESS
done

echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
CREATE_GAME_RESULT=$($PSQL "INSERT INTO GAMES (USER_ID,SCORE) VALUES ($USER_ID,$number_of_guesses)")