# Test for Coin Changer

require "minitest/autorun"
require_relative "cc.rb"

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

end