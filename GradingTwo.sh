#!/usr/bin/bash

calculateOverallGrade() {
    # Take in input arguments
    local LIE=$1
    local WEB_DESIGN=$2
    local ORACLE=$3
    local OTHERS=$4

    # Calculate average mark
    AVERAGE=$(echo "scale=2; ($LIE + $WEB_DESIGN + $ORACLE) / 3" | bc)

    # Assign grade based on gender and program
    if [ "$OTHERS" = "Computing" ] || [ "$OTHERS" = "Male" ]; then
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
    elif [ "$OTHERS" = "Computing" ] || [ "$OTHERS" = "Female" ]; then
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
    elif [ "$OTHERS" = "Mobile" ] || [ "$OTHERS" = "Male" ]; then
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
    elif [ "$OTHERS" = "Mobile" ] || [ "$OTHERS" = "Female" ]; then
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
read -r -p "Enter LIE marks: " LIE
read -r -p "Enter WEB-DESIGN marks: " WEB_DESIGN
read -r -p "Enter ORACLE marks: " ORACLE
read -r -p "Enter Gender (Male/Female) or Enter Program: " OTHERS

calculateOverallGrade "$LIE" "$WEB_DESIGN" "$ORACLE" "$OTHERS"