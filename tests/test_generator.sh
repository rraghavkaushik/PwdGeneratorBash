#!/bin/bash

# Testing pwd_generator.sh

echo "Testing default password generation..."
./pwd_generator.sh
echo ""

echo "Testing password length specification..."
./pwd_generator.sh -l 15
echo ""

echo "Testing uppercase letters inclusion..."
./pwd_generator.sh -u
echo ""

echo "Testing special characters inclusion..."
./pwd_generator.sh -s
echo ""

echo "Testing numbers inclusion..."
./pwd_generator.sh -n
echo ""

echo "Testing verbose mode..."
./pwd_generator.sh -v
echo ""

echo "Testing combination of options..."
./pwd_generator.sh -l 20 -u -s -n -v
echo ""

echo "Testing invalid option..."
./pwd_generator.sh -x
echo ""

echo "Testing help message..."
./pwd_generator.sh -h
echo ""
