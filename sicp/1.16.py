def fast_iter(b, n):

    def iter(b, n, a = 1):
        if n == 0:
            return a

        if n % 2 == 0:
            return iter(b ** 2, n / 2, a)

        return iter(b, n -1, a * b)
    
    return iter(b, n)
