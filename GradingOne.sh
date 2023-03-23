#!/usr/bin/bash

calculateOverallGrade() {
    # Take in input arguments
    local LIE=$1
    local WEB_DESIGN=$2
    local ORACLE=$3

    # Calculate average mark
    AVERAGE=$(echo "scale=2; ($LIE + $WEB_DESIGN + $ORACLE) / 3" | bc)

    # Assign grade based on average mark
    if (( $(echo "$AVERAGE >= 90" | bc -l) )); then
            echo "Student grade: Distinction"
    elif (( $(echo "$AVERAGE >= 80" | bc -l) )); then
            echo "Student grade: Merit"
    elif (( $(echo "$AVERAGE >= 70" | bc -l) )); then
            echo "Student grade: First Class"
    elif (( $(echo "$AVERAGE >= 60" | bc -l) )); then
            echo "Student grade: Second Class"
    elif (( $(echo "$AVERAGE >= 50" | bc -l) )); then
            echo "Student grade: Pass"
    else
            echo "Student grade: Fail"
    fi
}

# Prompt user to input subject marks
read -r -p "Enter LIE marks: " LIE
until [[ "$LIE" =~ ^[0-9]+(\.[0-9]+)?$ ]]; do
    read -r -p "Please enter a valid number for LIE marks: " LIE
done

# shellcheck disable=SC2162
read -p "Enter WEB-DESIGN marks: " WEB_DESIGN
until [[ "$WEB_DESIGN" =~ ^[0-9]+(\.[0-9]+)?$ ]]; do
    read -r -p "Please enter a valid number for WEB-DESIGN marks: " WEB_DESIGN
done

read -r -p "Enter ORACLE marks: " ORACLE
until [[ "$ORACLE" =~ ^[0-9]+(\.[0-9]+)?$ ]]; do
    read -r -p "Please enter a valid number for ORACLE marks: " ORACLE
done

calculateOverallGrade "$LIE" "$WEB_DESIGN" "$ORACLE"