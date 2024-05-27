def add(number_one, number_two)
    number_one + number_two
end

def subtract(number_one, number_two)
    number_one - number_two
end

def sum(numbers)
    numbers.sum
end

def multiply(number_one, number_two)
    number_one * number_two
end

def power(base, exponent)
    return base ** exponent
end

def factorial(n)
    return 1 if n == 0
    n * factorial(n - 1)
  end
  