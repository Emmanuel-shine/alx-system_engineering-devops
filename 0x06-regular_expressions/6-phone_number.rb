#!/usr/bin/env ruby
# This script accepts one argument and matches a specific regular expression pattern for a 10-digit phone number.
# The first argument from the command line
input = ARGV[0]
# The regular expression for matching a 10-digit phone number
regex = /^\d{10}$/
# Find all matches and join them to output in one line
matches = input.scan(regex).join
# Print the result
puts matches

