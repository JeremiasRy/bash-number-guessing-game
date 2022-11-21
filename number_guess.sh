#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~ Number guessing game ~~\n"
echo -e "\nEnter your username:"
read USERNAME

USERNAME_QUERY_RESULT="$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")"
if [[ -z $USERNAME_QUERY_RESULT ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USERNAME_QUERY_RESULT="$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")"
else
  echo $USERNAME_QUERY_RESULT | while IFS="|" read ID USERNAME GAMES_PLAYED BEST_GAME
  do
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done 
fi

GUESSES=1
RANDOM_NUMBER_TO_GUESS=$(( $RANDOM % 1001 ))
echo $RANDOM_NUMBER_TO_GUESS
echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS

ASK_AGAIN() {
  echo -e "\n$1"
  read USER_GUESS
}

while [[ $USER_GUESS != $RANDOM_NUMBER_TO_GUESS ]]
do
  ((GUESSES++))
  if [[ ! $USER_GUESS =~ [0-9]+ ]]
  then
    ASK_AGAIN "That is not an integer, guess again:"
  elif [[ $USER_GUESS < $RANDOM_NUMBER_TO_GUESS ]]
  then
    ASK_AGAIN "It's higher than that, guess again:"
  elif [[ $USER_GUESS > $RANDOM_NUMBER_TO_GUESS ]]
  then
    ASK_AGAIN "It's lower than that, guess again:"
  fi
done
echo -e "\nYou guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER_TO_GUESS. Nice job!"

USERSTATS=$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")
echo $USERSTATS | while IFS="|" read  ID USERNAME GAMES_PLAYED BEST_GAME
do
if [[ $BEST_GAME == 0 || $BEST_GAME > $GUESSES ]]
then 
  INSERT_HIGHSCORE=$($PSQL "UPDATE users SET best_game = $GUESSES WHERE user_id = $ID")
fi
((GAMES_PLAYED++))
INSERT_GAME_COUNT=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED WHERE user_id = $ID")
done
