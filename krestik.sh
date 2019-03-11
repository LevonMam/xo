#!/bin/bash

arr=("1" "2" "3" "4" "5" "6" "7" "8" "9")

clear

green='\033[0;32m'
red='\033[0;31m'
nocolor='\033[0m'
    

function game_area {
  echo "Game area:                Stepanavan/Training's GOOD job! "   
  echo "7  | 8 | 9"
  echo "___|___|___"
  echo "4  | 5 | 6"
  echo "___|___|___"
  echo "1  | 2 | 3"
  echo "   |   |  "



  echo
  echo -e "${arr[6]}  | ${arr[7]} | ${arr[8]}"
  echo -e "___|___|___"
  echo -e "${arr[3]}  | ${arr[4]} | ${arr[5]}"
  echo -e "___|___|___"
  echo -e "${arr[0]}  | ${arr[1]} | ${arr[2]}"
  echo -e "   |   |"
}


function check {

              if [[ ( ${arr[0]} == ${arr[1]} ) && ( ${arr[1]} == ${arr[2]} ) ]]; then
                      echo "Congratulations ${arr[0]} WON !!!"; exit ; fi

              if [[ ( ${arr[3]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[5]} ) ]]; then
                      echo "Congratulations ${arr[3]} WON !!!"; exit ; fi

              if [[ ( ${arr[6]} == ${arr[7]} ) && ( ${arr[7]} == ${arr[8]} ) ]]; then
                      echo "Congratulations ${arr[6]} WON !!!"; exit ; fi

              if [[ ( ${arr[0]} == ${arr[3]} ) && ( ${arr[3]} == ${arr[6]} ) ]]; then
                      echo "Congratulations ${arr[0]} WON !!!"; exit ; fi

              if [[ ( ${arr[1]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[7]} ) ]]; then
                      echo "Congratulations ${arr[1]} WON !!!"; exit ; fi

              if [[ ( ${arr[2]} == ${arr[5]} ) && ( ${arr[5]} == ${arr[8]} ) ]]; then
                      echo "Congratulations ${arr[2]} WON !!!"; exit ; fi

              if [[ ( ${arr[0]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[8]} ) ]]; then
                      echo "Congratulations ${arr[0]} WON !!!"; exit ; fi

              if [[ ( ${arr[2]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[6]} ) ]]; then
                      echo "Congratulations ${arr[2]} WON !!!"; exit ; fi


}

function check_reapet_index()
{
  while [[  ${arr[$index-1]} != $index  ]]
  do

       echo -e "\n Enter correct step: "
       read index
       game_area
  done
}


game_area
for (( i = 0; i < 9; i++ )); do
  if [[ $((i % 2)) == 0 ]]
  then
       echo "First player's turn: (X) "
       read index
       check_reapet_index
       arr[$index-1]="${green}X${nocolor}"
       clear
       game_area

   else
       echo "Second player's turn:(0) "
       read index
       check_reapet_index   #ստուգում է արդյոք վանդակի տվյալ տեղը ազատ է թե չէ
       arr[$index-1]=${red}'0'${nocolor}
       clear
       game_area

  fi
  check #ստուգում է թե ով է հաղթել

done
clear
game_area

echo "No Winner!"