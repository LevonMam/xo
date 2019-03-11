#!/bin/bash

arr=("1" "2" "3" "4" "5" "6" "7" "8" "9")

function game_area {
    clear
    echo "${arr[0]}  | ${arr[1]} | ${arr[2]}"
    echo "___|___|___"
    echo "${arr[3]}  | ${arr[4]} | ${arr[5]}"
    echo "___|___|___"
    echo "${arr[6]}  | ${arr[7]} | ${arr[8]}"
    echo "   |   |"
}

function input {
        read -n 1 index
        while [[ ${arr[$index - 1]} == "X" || ${arr[$index - 1]} == "O" ]]
        do
                read -n 1 index
        done

}

function check {

                if [[ ( ${arr[0]} == ${arr[1]} ) && ( ${arr[1]} == ${arr[2]} ) ]]; then
                        echo "${arr[0]} won"; exit ; fi

                if [[ ( ${arr[3]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[5]} ) ]]; then
                        echo "${arr[3]} won"; exit ; fi

                if [[ ( ${arr[6]} == ${arr[7]} ) && ( ${arr[7]} == ${arr[8]} ) ]]; then
                        echo "${arr[6]} won"; exit ; fi

                if [[ ( ${arr[0]} == ${arr[3]} ) && ( ${arr[3]} == ${arr[6]} ) ]]; then
                        echo "${arr[0]} won"; exit ; fi

                if [[ ( ${arr[1]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[7]} ) ]]; then
                        echo "${arr[1]} won"; exit ; fi

                if [[ ( ${arr[2]} == ${arr[5]} ) && ( ${arr[5]} == ${arr[8]} ) ]]; then
                        echo "${arr[2]} won"; exit ; fi

                if [[ ( ${arr[0]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[8]} ) ]]; then
                        echo "${arr[0]} won"; exit ; fi

                if [[ ( ${arr[2]} == ${arr[4]} ) && ( ${arr[4]} == ${arr[6]} ) ]]; then
                        echo "${arr[2]} won"; exit ; fi


}
for (( i = 1; i <= 9; i++ )); 
do
        game_area 
        check
	input
        if [ $((i%2)) -eq 1 ]
        then
                arr[$index - 1]="X"
        else
                arr[$index - 1]="O"
        fi
done
echo "Nichya"





