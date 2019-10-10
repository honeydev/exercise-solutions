require "test/unit"

def average(x, y)
    return (x + y) / 2   
end


def is_good_enough(previous, guess)
    return ((previous - guess) / guess).abs < 0.001
end

def improve_sqrt(previous, guess, x)
    if is_good_enough previous, guess
        return guess
    end
    return improve_sqrt(guess, average(x / guess, x).to_f, x)
end

class TestSimpleNumber < Test::Unit::TestCase

    def test_equal
      assert_equal(1, improve_sqrt(0.5, 1, 2).floor)
      assert_equal(2, improve_sqrt(0.5, 1, 4).floor)
    end
end
