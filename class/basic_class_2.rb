class Person
	@name = 'temp'
	# ~ setter NOTE: This method can be defined as attr_writer :name
	def name=(name)
		@name = name
	end

	# ~ getter NOTE: This method can be defined as attr_reader :name
	def name
		@name
	end
end

p = Person.new
puts p.name
# nil because @name defined below class Person is an instance variable belonging to the class object. Not the created object

p.name = 'arm'
puts p.name
# arm
