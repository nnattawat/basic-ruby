class A
	def self.hello
		puts "hello world"
	end
end

puts A.hello
# hello world

class B < A
	def self.bye
		puts "Bye!"
	end
end
puts B.hello
# hello world

puts B.bye
# Bye!

class C < B
	def self.bye
		puts "Bye overwritten"
	end

	def self.hello
		# call the parent method using super
		super
		puts "hello overwritten"
	end
end
puts C.hello
# hello world
# hello overwritten

puts C.bye
# Bye overwritten