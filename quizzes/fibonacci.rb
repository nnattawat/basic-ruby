# Find fibonacci at n
# def fibonacci(n)
#    n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
# end
# puts fibonacci( 10 )


# http://projecteuler.net/problem=2
def fibo_seq max
	seq = [0, 1]
	next_val = seq[-2] + seq[-1]
	while next_val < max
		seq << next_val
		next_val = seq[-2] + seq[-1]
	end
	seq
end

def sum_of_even array
	array.inject(0) do |memo, val| 
		if val.even?
			memo + val
		else
			memo
		end
	end
end

seq = fibo_seq 4000000

puts sum_of_even seq[2, seq.size]
