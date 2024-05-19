#!/usr/bin/env ruby
# This script accepts one argument and matches a specific regular expression pattern.
# The first argument from the command line
input = ARGV[0]
# The regular expression for the given task, it matches patterns like htn, hbtn, hbttn, hbt+tn
regex = /hb?t?n/
# Find all matches and join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

