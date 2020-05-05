require "test/unit"

def double(n)
  n ** 2
end
  
def half(n)
  n / 2
end

def multiple_iter(a, b, c)
  if b.zero?
    return c
  elsif b.even?
    return multiple_iter(double(a), half(b), c)
  else
    return multiple_iter(a, b - 1, a + c)
  end
end


class TestRecursiveSolution < Test::Unit::TestCase

  def test_equal

    assert_equal(15, *_iter(5, 3, 0))
  end
end
