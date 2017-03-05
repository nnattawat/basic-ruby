# Sum array
data = [1,2,3,4,5]
sum = data.inject { |mem, var|  mem + var}
# Equal to: sum = data.inject(0) { |mem, var|  mem + var}
puts "Sum of #{data} is #{sum} \n\n"

# Calculate Factorial
print "Please enter number for factorail: "
STDOUT.flush
n = gets.chomp.to_i # Get + remove new line + convert to int
factorial = proc do |n|
							(1..n).inject(1) do |mem, var|
								mem * var
							end
						end
result = factorial.call(n)
puts "#{n}! is #{result} \n\n"

# Construct Hash from Array
collection = [ [1, 'one'], [2, 'two'], [3, 'three'], [4, 'four'], [5, 'five']]
new_hash = collection.inject({}) do |mem, var|
												mem[var.first] = var.last
												mem
											end
puts "You can use inject to change array:\n#{collection}\nto\n#{new_hash} \n\n"
