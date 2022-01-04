require "./math_question"
require "./player"

class Game 
    def initialize 
        @player1 = Player.new("player1")
        @player2 = Player.new("player2")
        @current_player = @player1
    end

    def switch_player
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
    end

    def start
        while @current_player.lives > 0 do
        puts "----- NEW TURN -----"
        puts "#{@current_player.name}, the question is: "

        @question = Math_Question.new
        @question.question

        if @question.answer(gets.chomp.to_i)
            puts "✅ Yes! You are correct"
        else
            puts "❌ Seriously? No!"
            @current_player.lose_life
        end
            if @current_player.lives > 0
                puts "player1: #{@player1.lives}/3 : player2 #{@player2.lives}/3"
                switch_player
            else
                puts "\n ---- GAME OVER ---- \n Good bye!"
            end
        
        end
    end 
end