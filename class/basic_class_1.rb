class Person

	# Set sex to male if not specific
	def initialize(name = 'temp', sex = 'male')
		# Initialize some object attributes
		@name = name
		@sex = sex
	end
	
end

p = Person.new('arm', 'female')
puts p.inspect
# <Person:0x007ffbcb037518 @name="arm", @sex="female">

p = Person.new('arm')
puts p.inspect
# <Person:0x007ffbcb037518 @name="arm", @sex="male">

p = Person.new
puts p.inspect
# <Person:0x007ffbcb037518 @name="temp", @sex="male">
 


