#!/usr/bin/env bash
# Simple Interest Calculator
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>
# Example: ./simple-interest.sh 1000 5 2  -> 100.00

set -euo pipefail

err() { printf "Error: %s\n" "$1" >&2; exit 1; }

if [[ $# -ne 3 ]]; then
  err "Expected 3 arguments: principal rate_percent time_years"
fi

principal="$1"
rate="$2"
time="$3"

# Validate numeric inputs (integers or decimals)
num_re='^-?[0-9]+([.][0-9]+)?$'
[[ $principal =~ $num_re ]] || err "Principal must be a number"
[[ $rate =~ $num_re ]] || err "Rate must be a number (percent)"
[[ $time =~ $num_re ]] || err "Time must be a number (years)"

# Compute simple interest: (P * R * T) / 100
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p*r*t)/100 }')

printf "Simple Interest: %.2f\n" "$interest"
