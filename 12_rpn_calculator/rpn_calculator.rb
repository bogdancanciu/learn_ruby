class RPNCalculator
    def initialize
      @stack = []
    end
  
    def push(value)
      @stack.push(value)
    end
  
    def plus
      perform_operation(:+)
    end
  
    def minus
      perform_operation(:-)
    end
  
    def times
      perform_operation(:*)
    end
  
    def divide
      perform_operation(:/)
    end
  
    def value
      @stack.last
    end
  
    def tokens(expression)
      expression.split.map do |token|
        token.match?(/\d+/) ? token.to_i : token.to_sym
      end
    end
  
    def evaluate(expression)
      tokens(expression).each do |token|
        if token.is_a?(Integer)
          push(token)
        else
          case token
          when :+
            plus
          when :-
            minus
          when :*
            times
          when :/
            divide
          end
        end
      end
      value
    end
  
    private
  
    def perform_operation(operator)
      raise "calculator is empty" if @stack.size < 2
  
      operand2 = @stack.pop
      operand1 = @stack.pop
      result = operand1.to_f.send(operator, operand2.to_f)
      @stack.push(result)
    end
  end
  