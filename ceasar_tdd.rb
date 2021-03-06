require_relative 'ceasar.rb'
require 'minitest/autorun'

class Test_for_cipher < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_combinations
    assert_equal("g", ceasar("b", 5))
  end
  def test_for_help
    assert_equal("mjqu", ceasar("help", 5))
  end
  def test_for_send_help
    assert_equal("xjsi mjqu", ceasar("send help", 5))
  end
  def test_for_a_comma
    assert_equal("xjsi mjqu, uqjfxj", ceasar("send help, please", 5))
  end
  def test_for_a_longer_message
    assert_equal("ymj jsjrd fuwtfhmjx. bj fwj qtb ts xzuuqnjx; tzw rjs fwj ltnsl yt xyfwaj tw kwjjej!", ceasar("The enemy aproaches. We are low on supplies; our men are going to starve or freeze!", 5))
  end
  def test_reverse_for_a_comma
    assert_equal("send help, please", ceasar_reverse("xjsi mjqu, uqjfxj", 5))
  end
  def test_for_another_simple_reverse
    assert_equal("send help, please", ceasar_reverse("xjsi mjqu, uqjfxj", 5))
  end
  def test_for_a_hard_reverse
    assert_equal("<sexw> <dnctae></dnctae> </sexw> %%%", ceasar_reverse("<xjcb> <ishyfj></ishyfj> </xjcb> %%%", 5))
  end
  def test_for_reverse_same
    assert_equal("a", ceasar_reverse("F", 5))
  end
  def test_for_a_hard_string
    assert_equal("<xjcb> <ishyfj></ishyfj> </xjcb> %%%", ceasar_reverse("<cohg> <nxmdko></nxmdko> </cohg> %%%", 5))
  end
  def test_for_numbers
    assert_equal("123", ceasar("123", 5))
  end
  def test_for_numbers
    assert_equal("123", ceasar_reverse("123", 5))
  end
  def test_ceaser_with_no_string_as_argument
    assert_nil(nil, ceasar(123))
  end
  def test_ceaser_reverse_with_no_string_as_argument
    assert_nil(nil, ceasar(123))
  end
  def test_with_time_for_day_5
    day_of_month = 5
    assert_equal("yjxy ktw 5", ceasar("Test for 5", 5))
  end
  def test_with_time_for_day_10
    assert_equal("docd pyb 10", ceasar("Test for 10", 10))
  end
  def test_with_time_for_day_6
    assert_equal("yzxotm ul rkzzkxy", ceasar("String of letters", 6))
  end
  def test_with_time_for_day_27
    assert_equal("uftu gps 27", ceasar("Test for 27", 27))
  end
  def test_with_time_for_day_31
    assert_equal("xiwx jsv 30", ceasar("Test for 30", 30))
  end
  def test_for_time_with_day_26
    assert_equal("yjxy ktw 26", ceasar("Test for 26", 26))
  end
  def test_for_time_with_day_7
    assert_equal("alza mvy khf 7", ceasar("Test for day 7", 7))
  end
  def test_with_time_for_day_5_reversed
    assert_equal("test for 5", ceasar_reverse("yjxy ktw 5", 5))
  end
  def test_with_time_for_day_10_reversed
    assert_equal("test for 10", ceasar_reverse("docd pyb 10", 10))
  end
  def test_with_time_for_day_6_reversed
    assert_equal("string of letters", ceasar_reverse("yzxotm ul rkzzkxy", 6))
  end
  def test_for_time_with_day_7_reversed
    assert_equal("test for day 7", ceasar_reverse("alza mvy khf 7", 7))
  end
  def test_for_time_with_day_26_reversed
    assert_equal("ozno_ajm_yvt 26", ceasar_reverse("Test_for_day 26", 26))
  end
  def test_with_time_for_day_27_reversed
    assert_equal("test for 27", ceasar_reverse("uftu gps 27", 27))
  end
  def test_with_time_for_day_31_reversed
    assert_equal("test for 30", ceasar_reverse("xiwx jsv 30", 30))
  end
end
