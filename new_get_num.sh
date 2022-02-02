#!/bin/bash

### 2022021132 --> removed the return code because we are not storing in an exit status

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

get_num 1 10

echo $guess