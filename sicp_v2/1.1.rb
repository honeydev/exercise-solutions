require "test/unit"

def sum_of_squares(a, b)
  a**2 + b**2
end

def sos_two_big_nums(a, b, c)
  if a > c && b > c
    return sum_of_squares a, b
  elsif b > a && c > a
    return sum_of_squares b, c
  else
    return sum_of_squares a, c
  end
end


class TestSimpleNumber < Test::Unit::TestCase

  def test_equal
    assert_equal(25.0, sos_two_big_nums(2, 3, 4))
    assert_equal(232.0, sos_two_big_nums(14, 6, 3))
  end
end
