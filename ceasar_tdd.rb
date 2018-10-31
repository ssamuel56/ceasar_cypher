require_relative 'ceasar.rb'
require 'minitest/autorun'

class Test_for_cipher < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_combinations
    assert_equal("g", ceasar("b"))
  end
  def test_for_help
    assert_equal("mjqu", ceasar("help"))
  end
  def test_for_send_help
    assert_equal("xjsi mjqu", ceasar("send help"))
  end
  def test_for_a_comma
    assert_equal("xjsi mjqu, uqjfxj", ceasar("send help, please"))
  end
  def test_for_a_comma
    assert_equal("send help, please", ceasar_reverse("xjsi mjqu, uqjfxj"))
  end
  def test_for_a_hard_reverse
    assert_equal("<cohg> <nxmdko></nxmdko> </cohg> %%%", ceasar_reverse("<html> <script></script> </html> %%%"))
  end
  def test_ceaser_with_no_string_as_argument
    assert_nil(nil, ceasar(123))
  end
  def test_ceaser_reverse_with_no_string_as_argument
    assert_nil(nil, ceasar(123))
  end
end
