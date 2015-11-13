# random_number = 1_00_0 + Random.rand(10_00_0 - 1_00_0)
random_number = 1422

(1..10).each do
	print "Enter your guessing number : "
	STDOUT.flush
	inputs = gets.chomp.split('')

	exact_match = 0
	include_match = 0
	random_numbers = random_number.to_s.split('')
	inputs.each_with_index do |d, i|
		exact_match += 1 if random_numbers[i] == d
		include_match += 1 if random_numbers.include? d and random_numbers[i] != d
	end

	puts exact_match
	puts include_match
end