#!/usr/bin/bash

calculateOverallGrade() {
    # Take in input arguments
    local LIE=$1
    local WEB_DESIGN=$2
    local ORACLE=$3
    local GENDER=$4
    local PROGRAM=$5

    # Calculate average mark
    AVERAGE=$(echo "scale=2; ($LIE + $WEB_DESIGN + $ORACLE) / 3" | bc)

    # Assign grade based on gender and program
    if [ "$PROGRAM" = "Computing" ] && [ "$GENDER" = "Male" ]; then
        if (( $(echo "$AVERAGE >= 90" | bc -l) )); then
            echo "Distinction"
        elif (( $(echo "$AVERAGE >= 80" | bc -l) )); then
            echo "Merit"
        elif (( $(echo "$AVERAGE >= 70" | bc -l) )); then
            echo "First Class"
        elif (( $(echo "$AVERAGE >= 60" | bc -l) )); then
            echo "Second Class"
        elif (( $(echo "$AVERAGE >= 50" | bc -l) )); then
            echo "Pass"
        else
            echo "Fail"
        fi
    elif [ "$PROGRAM" = "Computing" ] && [ "$GENDER" = "Female" ]; then
        if (( $(echo "$AVERAGE >= 85" | bc -l) )); then
            echo "Distinction"
        elif (( $(echo "$AVERAGE >= 75" | bc -l) )); then
            echo "Merit"
        elif (( $(echo "$AVERAGE >= 65" | bc -l) )); then
            echo "First Class"
        elif (( $(echo "$AVERAGE >= 55" | bc -l) )); then
            echo "Second Class"
        elif (( $(echo "$AVERAGE >= 45" | bc -l) )); then
            echo "Pass"
        else
            echo "Fail"
        fi
    elif [ "$PROGRAM" = "Mobile" ] && [ "$GENDER" = "Male" ]; then
        if (( $(echo "$AVERAGE >= 95" | bc -l) )); then
            echo "Distinction"
        elif (( $(echo "$AVERAGE >= 80" | bc -l) )); then
            echo "Merit"
        elif (( $(echo "$AVERAGE >= 70" | bc -l) )); then
            echo "First Class"
        elif (( $(echo "$AVERAGE >= 60" | bc -l) )); then
            echo "Second Class"
        elif (( $(echo "$AVERAGE >= 50" | bc -l) )); then
            echo "Pass"
        else
            echo "Fail"
        fi
    elif [ "$PROGRAM" = "Mobile" ] && [ "$GENDER" = "Female" ]; then
        if (( $(echo "$AVERAGE >= 90" | bc -l) )); then
            echo "Distinction"
        elif (( $(echo "$AVERAGE >= 80" | bc -l) )); then
            echo "Merit"
        elif (( $(echo "$AVERAGE >= 70" | bc -l) )); then
            echo "First Class"
        elif (( $(echo "$AVERAGE >= 50" | bc -l) )); then
            echo "Second Class"
        elif (( $(echo "$AVERAGE >= 40" | bc -l) )); then
            echo "Pass"
        else
            echo "Fail"
        fi
    else
      echo "error"
    fi
}



# Input module marks, gender and program of the student
# shellcheck disable=SC2162
read -p "Enter LIE marks: " LIE
# shellcheck disable=SC2162
read -p "Enter WEB-DESIGN marks: " WEB_DESIGN
# shellcheck disable=SC2162
read -p "Enter ORACLE marks: " ORACLE
# shellcheck disable=SC2162
read -p "Enter Gender (Male/Female): " GENDER
# shellcheck disable=SC2162
read -p "Enter Program: " PROGRAM


# shellcheck disable=SC2086
calculateOverallGrade "$LIE" "$WEB_DESIGN" "$ORACLE" "$GENDER" "$PROGRAM"
