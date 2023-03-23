#!/usr/bin/bash

mergeFilesContents() {
    # Delete the output file if it already exists
    rm -f AllModulesMarks.txt

    # shellcheck disable=SC2002
    for ((index=1; index <= $(cat "SUDENTLIST.txt" | wc -l); index++));do
        stringOne=$(sed -n "${index}p" "SUDENTLIST.txt")
        stringTwo=$(sed -n "${index}p" "LIEMARKS.txt")
        stringThree=$(sed -n "${index}p" "ORACLEMARKS.txt")
        stringFour=$(sed -n "${index}p" "WEBDESIGNMARKS.txt")
        combinedString="$stringOne,$stringTwo,$stringThree,$stringFour"

        echo "$combinedString" >> "AllModulesMarks.txt"
    done

    # Format the output file as a table
    if [ -f "AllModulesMarks.txt" ] && [ -s "AllModulesMarks.txt" ]; then
        column -s ',' -t AllModulesMarks.txt > modify.txt
        mv modify.txt AllModulesMarks.txt
    fi
}

mergeFilesContents
cat AllModulesMarks.txt
