#!/bin/bash
#
# Descr: Script that retrieves list of tweets from UK or US containing 
# the phrase "did good" or "did well" from directory of zipped tweet data
# using zless and tweet2tab tool
#
# Usage: ./get_tweets.sh <path to tweets> <path to tweet2tab>

# Variables
TWEETS=$1
TOOL=$2

# fetch relevant tweets
zless $TWEETS | $TOOL id place text |\
grep -e "United Kingdom" -e "United States" |\
grep -i -e "did good" -e "did well" |\
grep -Ev "^RT"

