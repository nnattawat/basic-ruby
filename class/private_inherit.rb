class A

  def initialize(val)
    @val = val
  end

  def val
    val || 0
  end

	private

	def multiple
    val * 2
	end

  alias_method :total, :multiple
end

class B < A

  def initialize(val)
    @val = val
  end

	private

	def total
    val * 2
	end

end
