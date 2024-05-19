#!/usr/bin/env ruby
# This script accepts one argument and matches a specific regular expression pattern.
# The first argument from the command line
input = ARGV[0]
# The regular expression for the given task, matching strings that start with h, end with n, and have any single character in between
regex = /^h.n$/
# Find all matches and join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

