# http://projecteuler.net/problem=3

def prime_factor limit
	# Use Math.sqrt(limit).to_i to cut out duplicate number
	(2..Math.sqrt(limit).to_i).inject([]) do |memo, var|
		memo << var if limit % var == 0 and !memo.any? {|d| var % d == 0}
		memo
	end
end

prime_result = prime_factor 600851475143 # 600851475143
puts prime_result.max