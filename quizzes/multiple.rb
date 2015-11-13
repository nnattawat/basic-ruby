# http://projecteuler.net/problem=1
# Sum of number that Multiple of 3 or 5

def multiple_of limit, *dividers
	# Create array of match number
	matches = (1...limit).inject([]) do |memo, var|
		memo << var if dividers.any? { |divider| var % divider == 0}
		memo
	end

	matches.inject(0) { |mem, var|  mem + var}
end

puts multiple_of 1000, 3, 5
# 23