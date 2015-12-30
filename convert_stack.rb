#!/usr/bin/env ruby
#this script is convert the string into back-order hex value for stack


str = ARGV[0]
str1 = str.to_s.reverse

str1.each_char do |c|
	print "%02x" % c.ord
end

puts ""

