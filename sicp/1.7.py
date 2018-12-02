def sqrt_iter(old_guess, guess, x):

    if (is_good_enough(old_guess, guess)):
        return guess
    return sqrt_iter(guess, improve_guess(guess, x), x)

def is_good_enough(old_guess, guess):
    return abs(old_guess - guess) < 0.001

def improve_guess(guess, x):
    return average(x / guess, guess)

def average(x, y):
    return x + y / 2

def better_sqrt_iter(n):
    return sqrt_iter(1, 0.5, n)
