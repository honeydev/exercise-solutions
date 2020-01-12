require "test/unit"

def f_recursive(n)
  if n <= 3
    return n
  end
  f_recursive(n - 1) + f_recursive(n - 2) + f_recursive(n - 3)
end

def f_iter(n)
  def iter(counter, a, b, c)
    if counter < 0
      return a
    end
    iter(counter - 1, a + b + c, a, b)
  end
  iter(n, 1, 0, -1)
end

class TestRecursiveSolution < Test::Unit::TestCase
  def test_equal
    assert_equal(3, f_recursive(3))
    assert_equal(11, f_recursive(5))
    assert_equal(20, f_recursive(6))
  end
end

class TestIterSolution < Test::Unit::TestCase
  def test_equal
    assert_equal(3, f_recursive(3))
    assert_equal(11, f_iter(5))
    assert_equal(20, f_recursive(6))
end
