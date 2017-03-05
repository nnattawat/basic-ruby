# Require arguments
class MyClass
	def self.say_hi(name)
		puts "Hi #{name}"
	end
end

# MyClass.say_hi
# wrong number of arguments (0 for 1) (ArgumentError)

MyClass.say_hi("arm")
# Hi arm

# Argument with default value
class MyClass
	def self.say_hi(name="arm")
		puts "Hi #{name}"
	end
end

MyClass.say_hi
# Hi arm

MyClass.say_hi("nattawat")
# Hi nattawat

# Optional arguments
class MyClass
	def self.say_hi(*a)
		puts "#{a}"
		puts "Hi #{a.first}" unless a.empty?
	end
end

MyClass.say_hi
# []

MyClass.say_hi("arm")
# ["arm"]
# Hi arm

MyClass.say_hi("arm", "sand")
# ["arm", "sand"]
# Hi arm

# Hash params with default values
class MyClass
	def self.say_hi(first: 'nattawat', last: 'nonsung')
    puts "Hi, #{first} #{last}"
	end
end

MyClass.say_hi
# Hi, nattawat nonsung

MyClass.say_hi(first: 'arm')
# Hi, arm nonsung
