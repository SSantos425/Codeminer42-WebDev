class Mastermind
    def initialize(color1,color2,color3,color4)
        @color1 = color1
        @color2 = color2    
        @color3 = color3
        @color4 = color4
    end

    def check_color
        if @color1 == 'green' && @color2 == 'yellow' && @color3 == 'blue' && @color4 == 'white'
            puts('Congratulations!!! Its correct !!!')
            return true
        elsif
            result = correct_color(@color1, @color2, @color3, @color4)
            puts("Correct colors and the Right place: #{result[0]}")
            puts("Correct colors and the Wrong place: #{result[1]}")

        end
    end

    
end

def correct_color(color1, color2, color3, color4)
    right_color_right_place = 0
    right_color_wrong_place = 0

    color_passoword = [color1, color2, color3, color4]
    color_answer = ['green', 'yellow', 'blue', 'white']

    color_passoword.each_with_index do |color_passoword, index_color_password|
        color_answer.each_with_index do |color_answer, index_color_answer|
            if color_passoword == color_answer
                if color_passoword == 'green' && index_color_password == 0
                    right_color_right_place += 1
                elsif color_passoword == 'yellow' && index_color_password == 1
                    right_color_right_place += 1
                elsif color_passoword == 'blue' && index_color_password == 2
                    right_color_right_place += 1
                elsif color_passoword == 'white' && index_color_password == 3
                    right_color_right_place += 1
                end

                if color_passoword == 'green' && index_color_password != 0
                    right_color_wrong_place += 1
                elsif color_passoword == 'yellow' && index_color_password != 1
                    right_color_wrong_place += 1
                elsif color_passoword == 'blue' && index_color_password != 2
                    right_color_wrong_place += 1
                elsif color_passoword == 'white' && index_color_password != 3
                    right_color_wrong_place += 1
                end                  
            end
        end
    end

    result = [right_color_right_place, right_color_wrong_place]
    return result
end


def menu
    puts('Welcome to MASTERMIND!!!!')
    puts('Please type 4 of the following colors: RED, ORANGE, YELLOW, GREEN, BLUE, INDINGO, VIOLET, WHITE, BLACK' )
    shots = 1

    10.times do
        puts("#{shots} try")
        puts('')
        print('First color: ')
        color1 = gets.chomp

        print('Second color: ')
        color2 = gets.chomp

        print('Third color: ')
        color3 = gets.chomp

        print('Fourth color: ')
        color4 = gets.chomp
        

        puts('')
        puts("Results: ")
        mastermind = Mastermind.new(color1.downcase,color2.downcase,color3.downcase,color4.downcase)
        break if mastermind.check_color == true
        shots += 1

        if shots == 10
            puts ("You lose, try again")
        end
        
    end
end

menu()
