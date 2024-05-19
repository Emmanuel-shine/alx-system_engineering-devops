#!/usr/bin/env ruby
# This script accepts one argument and matches the word "School" in it.
# The first argument from the command line
input = ARGV[0]
# The regular expression to match "School"
regex = /School/
# Find all matches and join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

