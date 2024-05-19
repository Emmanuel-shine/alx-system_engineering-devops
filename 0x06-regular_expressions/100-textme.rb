#!/usr/bin/env ruby
# This script extracts the sender, receiver, and flags from a TextMe log entry.
# The first argument from the command line
input = ARGV[0]
# Regular expressions to capture sender, receiver, and flags
sender_regex = /\[from:(.*?)\]/
receiver_regex = /\[to:(.*?)\]/
flags_regex = /\[flags:(.*?)\]/
# Extract the matches
sender = input.scan(sender_regex).flatten.first
receiver = input.scan(receiver_regex).flatten.first
flags = input.scan(flags_regex).flatten.first
# Output in the desired format
puts "#{sender},#{receiver},#{flags}"

