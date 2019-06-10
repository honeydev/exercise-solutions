def sum(term, a, next, b):

    result = 0

    while not term(a, b):
        result += a
        a = next(a)
    
    return result


print(sum(lambda a, b: a > b, 4, lambda x: x + 1, 10))