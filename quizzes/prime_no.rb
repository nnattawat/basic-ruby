# http://projecteuler.net/problem=7
def prime_no limit_length
	result = [2]
	while result.length < limit_length
		start = result[-1] + 1
		while (2...start).any? {|d| start % d == 0}
			start += 1
		end
		result << start
	end
	result
end

puts (prime_no 10001)[-1]