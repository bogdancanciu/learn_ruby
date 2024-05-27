class Array
    def sum
      self.reduce(0, :+)
    end
  
    def square
      self.map { |x| x * x }
    end
  
    def square!
      self.map! { |x| x * x }
    end
end
  