class Person

	# Set sex to male if not specific
	def initialize(name = 'temp', sex = 'male')
		# Initialize some object attributes
		@name = name
		@sex = sex
	end

end

person = Person.new('arm', 'female')
p person
# <Person:0x007ffbcb037518 @name="arm", @sex="female">

person = Person.new('arm')
p person
# <Person:0x007ffbcb037518 @name="arm", @sex="male">

person = Person.new
p person
# <Person:0x007ffbcb037518 @name="temp", @sex="male">



