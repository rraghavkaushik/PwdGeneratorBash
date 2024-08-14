#!/bin/bash

display() {
    echo "Usage: $0 [-l] [-u] [-s] [-n] [-v]"
    # echo "Generating a random pwd..."
    echo "  -l LENGTH  Specify the password length (default: 10)"
    echo "  -u          Include uppercase letter"
    echo "  -s          Include special characters"
    echo "  -n          Include number"
    echo "  -v          verbose mode"

    exit 1

}

verbose() {
    if [["$VERBOSE" == "true"]]; then
        echo "$@"
    fi
}

LENGTH = 10
UPPERCASE = false
SPECIAL = false
NUMBERS = false
VERBOSE = false




