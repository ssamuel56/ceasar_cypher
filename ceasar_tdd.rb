require_relative 'ceasar.rb'
require 'minitest/autorun'

class Test_for_cipher < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_combinations
    assert_equal("g", ceasar("b"))
  end
  def test_for_send_help
    assert_equal("mjqu", ceasar("help"))
  end
end
