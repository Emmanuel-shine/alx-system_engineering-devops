#!/usr/bin/env ruby
# This script accepts one argument and matches a specific regular expression pattern.
# The first argument from the command line
input = ARGV[0]
# The regular expression for the given task, matching patterns like hbn, hbtn, hbtttn
regex = /hbt*n/
# Find all matches and join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

