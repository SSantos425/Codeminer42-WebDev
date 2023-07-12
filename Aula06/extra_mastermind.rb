class Mastermind
    def initialize(color_password)
        @color_password = color_password
    end

    def check_color(color_answer)
        # THE ANSWER:
        #print("\n#{color_answer}")
        right_color_right_place = 0
        right_color_wrong_place = 0

        @color_password.each_with_index do |color_password, index_color_password|
            color_answer.each_with_index do |color, index_color_answer|
                if color_password == color
                    if color_password[index_color_password] == color[index_color_answer]
                        right_color_right_place += 1
                        if right_color_right_place == color_answer.length
                            puts ("Congratulations!!! You have successfully")
                            return true
                        end
                    else
                        right_color_wrong_place += 1
                    end
                end
            end
        end 
        puts("\nCorrect colors in the Right place: #{right_color_right_place}")
        puts("Correct colors in the Wrong place: #{right_color_wrong_place}")  
    end 
end

def game_over(round,shots,color_password,game_color)
    if (shots >= round && color_password != game_color)
        puts('GAME OVER!! Restart!')
        return false
    end
end

def menu(round,number_color,game_color)
    color_password = []
    shots = 1
    
    round.times do
        color_password.clear
        number_color_count = 1
        puts ("\n#{shots} try\n")

        number_color.times do
            print("#{number_color_count} color: ")
            temp_color_passwords = gets.chomp
            color_password.push(temp_color_passwords)
            number_color_count += 1
        end
        
        puts("\nResults: ")
        mastermind = Mastermind.new(color_password)
        break if mastermind.check_color(game_color) == true 
        shots += 1
        break if game_over(round,shots-1,color_password,game_color) == false
    end
end

game_color = []

puts('Welcome to MASTERMIND !!!!')
puts('Please type:')

print( 'Number of rounds: ' )
round = gets().to_i

print('Number of colors for the password: ' )
number_color = gets().to_i

puts("\nType #{number_color} colors that are available:")
number_color.times do 
   color = gets.chomp
   game_color.push(color)
end

game_color.shuffle!

menu(round,number_color,game_color)