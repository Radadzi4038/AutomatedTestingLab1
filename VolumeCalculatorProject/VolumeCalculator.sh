#!/bin/bash

calculate_volume() {
  local height=$1
  local width=$2
  local length=$3

  # Check for non-integer input (letters, floats, symbols)
  if ! [[ "$height" =~ ^[1-9][0-9]*$ && "$width" =~ ^[1-9][0-9]*$ && "$length" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Only positive integers are allowed (no letters, decimals, or zero)."
    return 1
  fi

  # Calculate and return volume
  local volume=$((height * width * length))
  echo "$volume"
  return 0
}
