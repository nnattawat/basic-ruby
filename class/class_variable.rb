# Explain class variable @@
class MyClass
  @@value = 1
  def add_one
    @@value += 1
  end

  def value
    @@value
  end
end

a = MyClass.new
puts a.value
# 1

a.add_one
puts a.value
# 2

b = MyClass.new
puts b.value
# 2