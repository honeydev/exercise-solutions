

def triangle(a, b)
  if a == 1 || b == 1
    return 1
  end
  triangle(a - 1, b) + triangle(a, b - 1)
end

puts triangle(4, 3)

