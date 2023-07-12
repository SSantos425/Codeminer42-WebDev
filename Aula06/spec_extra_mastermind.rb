require_relative 'extra_mastermind'

RSpec.describe 'extra_mastermind' do
    it 'Corret Answer' do
        color_password = ['red', 'green', 'blue', 'yellow']
        color_answer = ['red', 'green', 'blue', 'yellow']
        mastermind = Mastermind.new(color_password)
        expect(mastermind.check_color(color_answer)).to be true
    end

    it 'Corret colors in the Right/Wrong place' do
        color_password = ['red', 'green', 'blue']
        color_answer = ['red', 'blue', 'green']
        mastermind = Mastermind.new(color_password)
        expect { mastermind.check_color(color_answer) }.to output("\nCorrect colors in the Right place: 1\nCorrect colors in the Wrong place: 2\n").to_stdout
    end

    it 'After N rounds Game Over' do
        round = 10
        shots = 10
        color_password = ['red', 'green', 'blue']
        color_answer = ['red', 'blue', 'green']
        expect(game_over(round,shots,color_password,color_answer)).to eq(false)
    end
   
end