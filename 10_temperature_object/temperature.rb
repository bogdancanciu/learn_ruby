
class Temperature
    def initialize(options = {})
        @fahrenheit = options[:f]
        @celsius = options[:c]
    end

    def self.from_celsius(celsius)
        new(:c => celsius)
        end

        def self.from_fahrenheit(fahrenheit)
        new(:f => fahrenheit)
        end

    def in_fahrenheit
        @fahrenheit.nil? ? c_to_f(@celsius) : @fahrenheit
    end

    def in_celsius
        @celsius.nil? ? f_to_c(@fahrenheit) : @celsius
    end

    private

    def c_to_f(celsius)
        celsius * 9.0 / 5 + 32
    end

    def f_to_c(fahrenheit)
        (fahrenheit - 32) * 5 / 9.0
    end
end

class Celsius < Temperature
    def initialize(celsius)
        super(:c => celsius)
    end
end
  
class Fahrenheit < Temperature
    def initialize(fahrenheit)
        super(:f => fahrenheit)
    end
end
  
  