def reverser
    yield.split.map { |word| word.reverse }.join(" ")
end

def adder(value_to_add = 1)
    yield + value_to_add
end

def repeater(no_of_times = 1)
    no_of_times.times { yield }
end