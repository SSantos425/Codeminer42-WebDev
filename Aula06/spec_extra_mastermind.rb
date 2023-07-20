require_relative 'extra_mastermind'

RSpec.describe 'extra_mastermind' do
    describe 'Creating classes' do
        it 'Menu Created' do 
            menu =  Menu.new
            menu.round = 3
            menu.number_color = 3
            menu.game_color = ['R','G','B']

            expect(menu.round).to eq(3)
            expect(menu.number_color).to eq(3)
            expect(menu.game_color).to eq(['R','G','B'])
        end

        it 'New game created' do
            menu =  Menu.new
            menu.round = 3
            menu.number_color = 3
            menu.game_color = ['R','G','B']

            new_game = CreateGame.new(menu)
            expect(new_game.round).to eq(3)
            expect(new_game.number_color).to eq(3)
            expect(new_game.game_color).to eq(['R','G','B'])
        end

        it 'Mastermind created' do
            menu =  Menu.new
            menu.round = 3
            menu.number_color = 3
            menu.game_color = ['R','G','B']

            new_game = CreateGame.new(menu)
            mastermind = Mastermind.new(new_game)
            expect(mastermind.round).to eq(3)
            expect(mastermind.number_color).to eq(3)
            expect(mastermind.game_color).to eq(['R','G','B'])
        end

        it 'User password created' do 
            number_color = 3
            user_password = Password.new(number_color)

            expect(user_password.number_color).to eq(3)
        end
    end

    describe 'Game Status' do
        it 'When the game ends with a correct guess in the right order' do 
            round = 3
            shots = 3
            color_password = ['R','G','B']
            game_color = ['R','G','B']
            right_color_right_place = 3

            game_result = GameResult.new
            
            expect(game_result.game_status(round, shots, color_password, game_color, right_color_right_place)).to eq(0)
        end

        it 'When the game ends with a max number of wrong tries' do
            round = 3
            shots = 3
            color_password = ['R','G','B']
            game_color = ['R','B','G']
            right_color_right_place = 3

            game_result = GameResult.new
            
            expect(game_result.game_status(round, shots, color_password, game_color, right_color_right_place)).to eq(1)
        end
    end
   
end