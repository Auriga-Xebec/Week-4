#!/bin/bash


### 202202021200 --> changed to -lt and -gt bevcause i do not understand basic math

### Prompt for a number between 1 and 100
### If the number is 42 print correct
### less than 42 print "Too Low!"
### Greater than 42 print "Too High!"
### Rpt the game until the correct number is found.

print_error() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
      
      
get_num()
{
    echo "enter a number between $1 and $2: "
    read guess
    while (( $guess < $1 || $guess > $2 )); do
        print_error "enter a number between $1 and $2: "
        read guess      
    done
}


get_num 1 100

while (( $guess != 42 ));do
    if [ $guess -lt 42 ]; then
        echo -e "\033[34m$guess is too low!\e[0m"
        get_num 1 100
        continue
    elif [ $guess -gt 42 ]; then
        echo -e "\033[31m$guess is too high!\e[0m"
        get_num 1 100
        continue
    fi  
done

echo -e "\033[32m$guess is correct!\e[0m"