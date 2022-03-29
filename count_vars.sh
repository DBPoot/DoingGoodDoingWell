#!/bin/bash
#
# Descr: counts the occurences of "did good" and "did well" from UK and US
# in a CSV file
#
# Usage: ./count_vars <csv file>

# get file from cmdline
FILE=$1
if [ -z "$FILE" ]
then
    echo "Please add a FILE"
    exit
fi

# Count vars
UKGOOD=`cat $FILE | grep "United Kingdom" | grep "did good" | wc -l`
UKWELL=`cat $FILE | grep "United Kingdom" | grep "did well" | wc -l`
USGOOD=`cat $FILE | grep "United States" | grep "did good" | wc -l`
USWELL=`cat $FILE | grep "United States" | grep "did well" | wc -l`

echo "\"Did Good\"(United Kingdom): $UKGOOD"
echo "\"Did Well\"(United Kingdom): $UKWELL"
echo "\"Did Good\"(United States): $USGOOD"
echo "\"Did Well\"(United States): $USWELL"