#!/usr/bin/env ruby

input = ARGV[0]
puts "Input received: #{input.inspect}"

result = input.scan(/^h\wn$/i).join
puts "Result after scan: #{result.inspect}"
