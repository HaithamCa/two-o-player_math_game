class Math_Question 
    attr_accessor :number1, :number2, :answer

    def initialize
        @number1 = rand(1..20)
        @number2 = rand(1..20)
        @answer = @number1 + @number2
    end

    def question
        puts "What does #{@number1} + #{@number2} equal?"
    end

    def answer(answer)
        answer == @answer
    end
end 