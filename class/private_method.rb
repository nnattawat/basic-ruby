class MyClass
	# NOTE that private in ruby is the same as protected in JAVA. So, inheritant class can be access private methods

	private # all methods that follow will be made private: not accessible from outside objects
	def hello
		puts "hello world"
	end
end

MyClass.new.hello
# Error: no method hello

class A < MyClass
	def hello
		super
	end
end

A.new.hello
# hello world

############# alternatively #############

# The previous code can be replaced by
class MyClass

	def hello
		puts "hello world"
	end

	private :hello
end
