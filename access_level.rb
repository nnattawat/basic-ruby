class AccessLevel
  def something_interesting
    another = AccessLevel.new
    another.public_method
    another.protected_method
    another.private_method
  end

  def public_method
    puts "Public method. Nice to meet you."
  end

  def call_private
    private_method
  end

  protected

  def protected_method
    puts "Protected method. Sweet!"
  end

  private

  def private_method
    puts "Private method."
  end
end

class Test < AccessLevel
  def call_private_from_test
    private_method
  end
end

AccessLevel.new.call_private
# Private method.

AccessLevel.new.private_method
# Error
# NOTE: you can call private by AccessLevel.new.send(:private_method)

Test.new.call_private_from_test
# Private method. NOTE: private can be access through subclasses

AccessLevel.new.something_interesting
 #=> Public method.  Nice to meet you.
 #=> Protected method.  Sweet!
 #=> NoMethodError: private method ‘private_method’ called for
 #=>  #<AccessLevel:0x898c8>

