#!/usr/bin/env bash

#Save current directory
CURRENT="$(pwd)"

#Save all arguments in array
ARGS=("$@")

#Printing 100 ./Test20.txt
#RESULT=$(find . -name "*.txt" -type f | xargs wc -l | sort -rn | grep -v 'total$' | head -1)

#Printing ./Test20.txt
#RESULT=$(find . -name "*.txt" -type f | xargs wc -l | sort -rn | grep -F '/' | awk '{print $2}' | head -1)

#Function to change the current directory with the given directory given by the user
#and then finding the file with the most lines and saving the result in a variable
dir_command (){
  #Change to the directory provided by the argument
  cd "${ARGS[1]}"

  #Finding the file with most lines and then
  #Saving the result
  PATH=$(find . -name "*.txt" -type f | xargs wc -l | sort -rn | grep -F '/' | awk '{print $2}' | head -1)

  #Concatenating the two paths using pwd and extracting the path after . (dot) character
  #to get the absolute path of the file containing most lines
  ABSOLUTE_PATH=$(pwd)${PATH#*.}
}

#Function to change the directory to the current directory where we want to create and save the result in .txt file
saving_the_result (){
    #Changing to the current directory before executing the script
    cd "$CURRENT"

    #Writing the result to new .txt file.
    #If the file exists, it overrides the result.
    echo "$ABSOLUTE_PATH" > results.txt
}

#Check if the arguments provided by the user are two
#if not, appropriate message is shown
if [[ $# -ne 2 ]] ; then
    echo 'You should put the directory in the arguments'
    exit 1
else
    #Calling the dir_command to make calculations
    dir_command

    #Calling saving_the_result function
    #If the file with the same name exists, it will override the result.
    saving_the_result
fi

