require "test/unit"

def expt_iter(a, b, n)
  if n == 0
    return a.round
  elsif n.round.even?
    return expt_iter a, b ** 2, n.to_f / 2
  else
    return expt_iter a * b, b, n - 1
  end
end

class TestRecursiveSolution < Test::Unit::TestCase
  def test_equal
    assert_equal(1024, expt_iter(1, 2, 10))
    assert_equal(531441, expt_iter(1, 3, 12))
  end
end
