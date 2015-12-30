#!/usr/bin/env ruby
#this script is convert the string into back-order hex value for stack


str = ARGV[0]
str1 = str.to_s.reverse

count = 0
str1.each_char do |c|
	
	if count % 4 ==0 and count != 0
		print "\n"
		count = 1
	else
		count += 1
	end

	print "%02x" % c.ord
end

puts ""

