# random_number = 1_00_0 + Random.rand(10_00_0 - 1_00_0)
random_number = 1422
random_number = random_number.to_s

def get_input
	print "Enter your guessing number : "
	STDOUT.flush
	gets.chomp
end

def compare(input, target)
	exact_match = 0
	included_match = 0

	input.each_char.with_index do |c, i|
    if c == target[i]
      exact_match += 1
    elsif target.include?(c)
      included_match += 1
    end
	end

  { exact_match: exact_match, included_match: included_match }
end

(1..10).each do
  results = compare(get_input, random_number)
	puts results[:exact_match]
	puts results[:included_match]
end
