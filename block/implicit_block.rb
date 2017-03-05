# All method can receive block implicitly. It's executed using yield.
# Implicit block
def hello
	yield if block_given?
end

hello { puts "Hello" }

# Implicit block
def hello_person(name)
	yield(name) if block_given?
end

hello_person("arm") do |n|
	puts "Hello #{n}"
end
