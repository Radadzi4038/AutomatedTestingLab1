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

# Test 2: Alphabet input
run_test "Test 2: Alphabet input" "a" "b" "c" \
"Error: Only positive integers are allowed (no letters, decimals, or zero)." \
"Letters like 'a', 'b', 'c' should be rejected."

# Test 3: Negative values
run_test "Test 3: Negative values" "-1" "2" "3" \
"Error: Only positive integers are allowed (no letters, decimals, or zero)." \
"Negative numbers should not be accepted."

# Test 4: Float values
run_test "Test 4: Float values" "2.5" "3" "4" \
"Error: Only positive integers are allowed (no letters, decimals, or zero)." \
"Decimal numbers like 2.5 are not considered valid input."

# Test 5: Zeros as input
run_test "Test 5: Zeros as input" "0" "3" "4" \
"Error: Only positive integers are allowed (no letters, decimals, or zero)." \
"Zero values are not allowed in any dimension."
