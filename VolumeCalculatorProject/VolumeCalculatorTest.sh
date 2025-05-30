#!/bin/bash
source ./VolumeCalculator.sh

# Test Runner Function with Explanation
run_test() {
  local description=$1
  local height=$2
  local width=$3
  local length=$4
  local expected=$5
  local why=$6

  echo "$description"
  echo "Input: height=$height, width=$width, length=$length"
  output=$(calculate_volume "$height" "$width" "$length")
  if [[ "$output" == "$expected" ]]; then
    echo "PASS ✅ - $why"
  else
    echo "FAIL ❌ - Expected: '$expected', Got: '$output'"
    echo "❗ Explanation: $why"
  fi
  echo "-----------------------------"
}

# Test 1: Valid integers (custom message with volume output)
echo "Test 1: Valid integers"
height="2"
width="3"
length="4"
expected="24"
echo "Input: height=$height, width=$width, length=$length"
output=$(calculate_volume "$height" "$width" "$length")
if [[ "$output" == "$expected" ]]; then
  echo "PASS ✅ - Valid Inputs. The volume is $output."
else
  echo "FAIL ❌ - Expected: '$expected', Got: '$output'"
  echo "❗ Explanation: This should be a valid calculation of 2 * 3 * 4 = 24."
fi
echo "------------------------------"

