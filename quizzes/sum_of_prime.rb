# http://projecteuler.net/problem=10
def prime_no limit_val
	result = [2]

	while result[-1] < limit_val
		start = result[-1] + 1
		while (2...start).any? {|d| start % d == 0}
			start += 1
		end
		break if start > limit_val
		result << start 
	end
	result
end

array = prime_no 2000000
puts array.inject(0) { |memo, val| memo + val}