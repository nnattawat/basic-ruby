class Person
	# we can replace getter and setter from person2 as attr_accessor
	attr_accessor :name

	def initialize name
		# @name = self.name
		@name = name
	end
end

p = Person.new 'temp'
puts p.name
# temp

p.name = 'arm'
puts p.name
# arm

Person.new
# wrong number of arguments (0 for 1)
