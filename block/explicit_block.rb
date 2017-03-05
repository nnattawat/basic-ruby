# Every method can receive block implicitly. It's executed using yield.
# Explicit block
def hello(&hello) # block used & indication
	yield if block_given? # We can also call hello.call
end

hello do
	puts "Hello"
end

# Explicit block
def hello_person(name, &hello)
	hello.call(name) if block_given? # We can also call yield(name)
end

hello_person("arm") do |n|
	puts "Hello #{n}"
end
