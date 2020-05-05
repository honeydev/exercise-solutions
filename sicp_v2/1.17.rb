require "test/unit"

def double(n)
  n ** 2
end

def half(n)
  n / 2
end


def log(a, b)
  if b == 0
    return 0
  elsif b.even?
    return double(log(a, half(b)))
  else
    return a + log(a, b - 1)
  end
end

class TestRecursiveSolution < Test::Unit::TestCase
  def test_equal
    assert_equal(1024, expt_iter(1, 2, 10))
    assert_equal(531441, expt_iter(1, 3, 12))
  end
end
