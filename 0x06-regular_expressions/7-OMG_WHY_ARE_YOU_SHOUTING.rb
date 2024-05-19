#!/usr/bin/env ruby
# This script accepts one argument and matches a specific regular expression pattern for capital letters.
# The first argument from the command line
input = ARGV[0]
# The regular expression for matching all capital letters
regex = /[A-Z]+/
# Find all matches, join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

