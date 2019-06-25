#!/bin/bash
# Tic Tac Toe by Will Bollock
function displayBoard {
    for (( i=1; i<${boardlength}+1; i++ ));
    do
        printf "${board[$i-1]}" && printf "${board[$i]}" && echo "${board[$i+1]}"
        i=$i+2
    done
}
function xMove {
    echo -e "${GREEN}Choose your move. Specify the X-Y coordinate you'd like to move, player X. (0,1) ${NC}"
read -r xCord

case $xCord in
    "0,0")
    echo "0,0 confimed"
    board[0]='X '
    displayBoard
    ;;
    "0,1")
    echo "0,1 confimed"
    board[1]='X '
    displayBoard
    ;;
    "0,2")
    echo "0,2 confimed"
    board[2]='X '
    displayBoard
    ;;
    "1,0")
    echo "1,0 confimed"
    board[3]='X '
    displayBoard
    ;;
    "1,1")
    echo "1,1 confimed"
    board[4]='X '
    displayBoard
    ;;
     "1,2")
    echo "1,2 confimed"
    board[5]='X '
    displayBoard
    ;;
     "2,0")
    echo "2,0 confimed"
    board[6]='X '
    displayBoard
    ;;
     "2,1")
    echo "2,1 confimed"
    board[7]='X '
    displayBoard
    ;;
     "2,2")
    echo "2,2 confimed"
    board[8]='X '
    displayBoard
    ;;
esac
}
function oMove {
    echo -e "${GREEN}Choose your move. Specify the X-Y coordinate you'd like to move, player O. (0,1) ${NC}"
read -r oCord

case $oCord in
    "0,0")
    echo "0,0 confimed"
    board[0]='O '
    displayBoard
    ;;
    "0,1")
    echo "0,1 confimed"
    board[1]='O '
    displayBoard
    ;;
    "0,2")
    echo "0,2 confimed"
    board[2]='O '
    displayBoard
    ;;
    "1,0")
    echo "1,0 confimed"
    board[3]='X '
    displayBoard
    ;;
    "1,1")
    echo "1,1 confimed"
    board[4]='O '
    displayBoard
    ;;
     "1,2")
    echo "1,2 confimed"
    board[5]='O '
    displayBoard
    ;;
     "2,0")
    echo "2,0 confimed"
    board[6]='O '
    displayBoard
    ;;
     "2,1")
    echo "2,1 confimed"
    board[7]='O '
    displayBoard
    ;;
     "2,2")
    echo "2,2 confimed"
    board[8]='O '
    displayBoard
    ;;
esac
}
#functions:
#update/display board

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
#TODO: implement this
read -r -n1 -p "$(echo -e "$RED""Do you want to play Tic-Tac-Toe? [y,n] ""$NC")" input
case $input in
    y|Y) 
    echo ""
    echo "Welcome!"
  ;;
    n|N) 
    exit 0 ;;
esac

echo "Creating board..."
sleep 1
#TODO: Create the board
declare -a board=("." "." "." "." "." "." "." "." ".")
# get length of an boarday
boardlength=${#board[@]}
#credit: https://stackoverflow.com/questions/11233825/multi-dimensional-boardays-in-bash

#todo: PRINT BOARD
echo "Displaying board..."
sleep 1
displayBoard


# use for loop to read all values and indexes

#TODO: Let one player specify spot where to update board
#while VICTORY CONDITION NOT MET, THEN:
counter=0
while [ $counter -eq 0 ]
do
    xMove
    oMove
     #works except for this error condition
     #while X not in a certain three positions, then...
     
    if [ "${board[$1]}" != "." ]  && [ "${board[$1]}" == "${board[$2]}" ] && [ "${board[$2]}" == "${board[$3]}" ];then
    echo "Game over!"
    echo "Also hers 1 ${board[$1]} and 2 ${board[$2]} and 3 ${board[$3]}"
    fi

done


#player O and player X will take turns. "Player X goes first," ask for coordinates, then let player O go. Update the board in between


#TODO: Update board variable/multi-d boarday and print it back out

#Repeat
