def f(n):
    if n < 3:
        return n
    return f(n - 1) + f(n - 2) + f(n - 3)

def f_iter(n):
    def iter(a, b, c, counter):
        if (counter < 3):
            return c
        return iter(b, c, (a + b + c), counter - 1)
    return iter(0, 1, 2, n)
