#http://projecteuler.net/problem=6

def sum_square limit
	(1..limit).inject(0) {|memo, var| memo + var ** 2}
end

def square_sum limit
	result = (1..limit).inject(0) {|memo, var| memo + var}
	result ** 2
end

puts square_sum(100) - sum_square(100)