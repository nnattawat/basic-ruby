## module is (1) used for namespacing
module ANamespace
  class AClass
    def initialize
      puts "Another A, coming right up!"
    end
  end
  class BClass
    def initialize
      puts "Another B, coming right up!"
    end
  end
end

ANamespace::AClass.new
# Another A, coming right up!

ANamespace::BClass.new
# Another B, coming right up!

## (2) used for including methods
module A
  def a1
    puts 'a1 is called'
  end
end
 
module B
  def b1
    puts 'b1 is called'
  end
end
 
module C
  def c1
    puts 'c1 is called'
  end
end
 
class Test
  include A
  include B
  include C
 
  def display
    puts 'Modules are included'
  end
end
 
object = Test.new
object.display
# Modules are included
object.a1
# a1 is called
object.b1
# b1 is called
object.c1
# c1 is called

