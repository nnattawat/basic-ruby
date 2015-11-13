# http://projecteuler.net/problem=5

def evenly_divable? number
	(1..20).all? do |n|
			number % n == 0
	end
end

index = 1
while !evenly_divable? index
	index += 1
end

puts index
