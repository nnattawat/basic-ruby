# explain class method (static in JAVA)
class MyClass
	def self.a_method
		"self.[method] can be called without creating an instance"
	end
end

puts MyClass.a_method