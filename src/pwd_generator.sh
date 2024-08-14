#!/bin/bash

display() {
    echo "Usage: $0 [-l] [-u] [-s] [-n] [-v]"
    echo "  -l LENGTH  Specify the password length (default: 10)"
    echo "  -u          Include uppercase letter"
    echo "  -s          Include special characters"
    echo "  -n          Include number"
    echo "  -v          verbose mode"

    exit 1
}

log() {
    if $VERBOSE; then
        echo "$@"
    fi
}

LENGTH=10
UPPERCASE=false
SPECIAL=false
NUMBERS=false
VERBOSE=false

while getopts "l:usnv" opt; do
    case $opt in
        l) LENGTH=$OPTARG ;;
        u) UPPERCASE=true ;;
        s) SPECIAL=true ;;
        n) NUMBERS=true ;;
        v) VERBOSE=true ;;
    esac
done

log "Generating a random password"

UPPERCASE_CHARS="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWERCASE_CHARS="abcdefghijklmnopqrstuvwxyz"
NUMBERS_CHARS="0123456789"
SPECIAL_CHARS="!@#$%^&*()_+-=[]{}|;:,.<>?"

CHARS=$LOWERCASE_CHARS
if $UPPERCASE; then CHARS+=$UPPERCASE_CHARS; fi
if $SPECIAL; then CHARS+=$SPECIAL_CHARS; fi
if $NUMBERS; then CHARS+=$NUMBERS_CHARS; fi

PWD=""
for ((i=0; i<$LENGTH; i++ )); do
    PWD+="${CHARS:$(($RANDOM%${#CHARS})):1}"
done

log "Generated password"

echo "The password is : $PWD"

exit 0



