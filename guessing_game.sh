#!/bin/bash

### Prompt for a number between 1 and 100
### If the number is 42 print correct
### less than 42 print "Too Low!"
### Greater than 42 print "Too High!"
### Rpt the game until the correct number is found.

#------------------------------------NOT MY CODE------------------------------------------------#
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
      
 
      
#This function will get a value between the 2nd and 3rd arguments 
      
getNumber() 
      
{ 
      
    read -p "$1: " 
    
    
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Input must be between $2 and $3" 
        read -p "$1: "
        if [ $REPLY > $2 || $REPLY< $3 ]; then
            var=$REPLY
            echo $var
            break
        fi    
        
    done 
    return 
      
} 

var_test()
{
    return $1
}


#---------------------------------------------------------------------------------------------#

getNumber "please type a number between 1 and 100" 1 100 

var1=$?

echo -e "\n\n" $var1
