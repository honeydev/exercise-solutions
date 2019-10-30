require "test/unit"


def improve_guess(sqrt_value, guess)
    ((sqrt_value / guess ** 2) + (2 * guess)) / 3.0
end

def is_good_enough(guess, prev_guess)
    (guess - prev_guess).abs < 0.001
end

def cube(x, guess, prev_guess)
    if is_good_enough(guess, prev_guess)
        return guess
    end
    return cube(x, improve_guess(x, guess), guess)
end

# print(cube(27, 2.0, 1.0))

class TestSimpleNumber < Test::Unit::TestCase

    def test_equal
      assert_equal(3, cube(27, 1, 0.5).round)
      assert_equal(2, cube(8, 1, 0.5).round)
      assert_equal(4, cube(64, 1, 0.5).round)
    end
end
