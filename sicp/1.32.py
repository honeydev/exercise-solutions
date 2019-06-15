def sum_combainer(a, b):
    return a + b

def product_combainer(a, b):
    return a * b

def term(a, b):
    return a > b

def inc(a):
    return a + 1

def accumulate(combainer, null_value, term, a, next, b):
    if term(a, b):
        return null_value
    return combainer(
        a, 
        accumulate(combainer, null_value, term, next(a), next, b))

def accumulate_iter(combainer, null_value, term, a, next, b):
    def iter(a, result):
        if term(a, b):
            return result
        return iter(next(a), combainer(a, result))
    return iter(a, null_value)


print(accumulate(sum_combainer, 0, term, 4, inc, 7))
print(accumulate(product_combainer, 1, term, 4, inc, 7))


print(accumulate_iter(sum_combainer, 0, term, 4, inc, 7))
print(accumulate_iter(product_combainer, 1, term, 4, inc, 7))