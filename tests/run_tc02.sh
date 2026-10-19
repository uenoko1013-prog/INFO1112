#!/bin/bash

echo "Running TC02 - Valid directory"

#A folder we know exists
testdir="/tmp"

#Run the script with that folder and capture the output
actual=$(./loganalyze.sh "$testdir")

#Capture the exit code
status=$?

#Expected output
expected="$testdir"

#check exit code
if [ "$status" -ne 0 ]; then
    echo "[FAIL] Expected exit code: 0"
    exit 1
fi

#check output
if [ "$actual" != "$expected" ]; then
    echo "[FAIL] Expected output: $expected"
    exit 1
fi

echo "[PASS] TC02"
exit 0
