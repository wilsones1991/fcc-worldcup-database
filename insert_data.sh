#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE TABLE teams, games"

exec < games.csv
read header
while IFS="," read year round winner opponent winner_goals opponent_goals
do
  # check if winner name is in teams table
  echo $winner
  TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$winner'")
  # if not, insert into teams table
  if [[ -z $TEAM_NAME ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$winner')"
  fi
  # then, check if opponent is in teams table
  TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$opponent'")
    # if not, insert into teams table
  if [[ -z $TEAM_NAME ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$opponent')"
  fi

  # now, get the team_id for opponent and winner - could optimize this by storing values in a dictionary

  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

  # insert game into games database
  $PSQL "INSERT INTO games(winner_id, opponent_id, year, round, winner_goals, opponent_goals) VALUES($WINNER_ID, $OPPONENT_ID, $year, '$round', $winner_goals, $opponent_goals)"

done