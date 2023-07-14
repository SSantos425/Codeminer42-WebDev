class Mastermind
    attr_reader :round,:number_color,:game_color
    def initialize(new_game)
        @round = new_game.round
        @number_color = new_game.number_color
        @game_color = new_game.game_color
    end

    def gameplay
        # THE ANSWER:
        print("\n#{@game_color}\n")
        shots = 1
        right = false

        @round.times do
            right_color_right_place = 0
            right_color_wrong_place = 0

            puts("#{shots} Try")

            user_password = Password.new(@number_color)
            user_password.password

            user_password.color_password.each_with_index do |password_color, index|
                if password_color == @game_color[index]
                  right_color_right_place += 1
                elsif @game_color.include?(password_color)
                  right_color_wrong_place += 1
                end
            end

            puts("\nCorrect colors in the Right place: #{right_color_right_place}")
            puts("Correct colors in the Wrong place: #{right_color_wrong_place}")  

            shots += 1

            game_result = GameResult.new
            game_status = game_result.game_status(@round,shots-1,user_password.color_password,@game_color,right_color_right_place)
            break if game_status == 0 || game_status == 1
        end
    end 
end

class GameResult
    def game_status(round, shots, color_password, game_color, right_color_right_place)
        if shots >= round && color_password != game_color
            puts('GAME OVER!! Restart!')
            return 1
        elsif (shots <= round && right_color_right_place == game_color.length)
            puts "Congratulations!!! You have successfully!!!"
            return 0
        end
    end

end


class Menu
    attr_accessor :round,:number_color,:game_color
    def initialize
        @game_color = []
    end
   
    def menu
        puts('Welcome to MASTERMIND !!!!')
        puts('Please type:')

        print( 'Number of rounds: ' )
        @round = gets().to_i

        print('Number of colors for the password: ' )
        @number_color = gets().to_i

        puts("\nType #{number_color} colors that are available:")
        @number_color.times do 
            color = gets.chomp
            @game_color.push(color)
        end
        @game_color.shuffle!
    end
end

class CreateGame
    attr_reader :round, :number_color, :game_color
    def initialize(menu)
      @round = menu.round
      @number_color = menu.number_color
      @game_color = menu.game_color
    end
  end

class Password
    attr_reader :number_color
    
    def initialize(number_color)
        @color_password = []
        @number_color = number_color
    end

    def password
        number_color_count = 1
        @number_color.times do
            print("#{number_color_count} color: ")
            temp_color_passwords = gets.chomp            
            @color_password.push(temp_color_passwords)
            number_color_count += 1
        end
    end
end

menu = Menu.new
menu.menu()
new_game = CreateGame.new(menu)
mastermind = Mastermind.new(new_game)
mastermind.gameplay()