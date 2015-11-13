class Bank
	attr_accessor :money

	def initialize(money)
		raise unless money.is_a?(Numeric)
		self.money = money	# Equal to @money = money
	end

	def add(added_money)
		self.money += added_money # Equal to @money += added_money
	end
end

require "test/unit"
class TestBank < Test::Unit::TestCase
	# method named 'setup' used for setting data
	def setup
		@bank = Bank.new(400)
	end

	# method named 'setup' used for cleaning data
	def teardown
		# puts "Clear data here!"	
	end

	# method starting with "test_" is interpreted as test case automatically
	def test_new_bank
		assert_equal(400, @bank.money)
	end

	def test_add_feature
		assert_equal(500, @bank.add(100))
	end

	def test_error
		assert_raise(RuntimeError) { Bank.new("500") }
	end
end

