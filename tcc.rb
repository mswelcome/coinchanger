# Test for Coin Changer

require "minitest/autorun"
require_relative "mcc.rb"

class Test_cc < Minitest::Test

	def test_1_1
		assert_equal(1,1)
	end

	def test_penny
		assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, cc(1))
	end

	def test_nickel
		assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 0}, cc(5))
	end

	def test_dime
		assert_equal({quarter: 0, dime: 1, nickel: 0, penny: 0}, cc(10))
	end

	def test_quarter
		assert_equal({quarter: 1, dime: 0, nickel: 0, penny: 0}, cc(25))
	end

	def test_37
		assert_equal({quarter: 1, dime: 1, nickel: 0, penny: 2}, cc(37))
	end

	def test_58
		assert_equal({quarter: 2, dime: 0, nickel: 1, penny: 3}, cc(58))
	end

	def test_75
		assert_equal({quarter: 3, dime: 0, nickel: 0, penny: 0}, cc(75))
	end

	def test_83
		assert_equal({quarter: 3, dime: 0, nickel: 1, penny: 3}, cc(83))
	end

	def test_99
		assert_equal({quarter: 3, dime: 2, nickel: 0, penny: 4}, cc(99))
	end
	

end