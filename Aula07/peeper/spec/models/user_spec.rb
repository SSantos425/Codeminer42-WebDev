require 'rails_helper'

RSpec.describe User, type: :model do
  it 'user is created' do
    user = User.new
    user.handle = 'sam'
    user.save
    expect(user.handle).to eq('sam')
  end

  it 'user has status' do 
    user = User.new
    user.handle = 'sam'
    user.save
  
    status = Status.new
    status.body = 'big text about something very important here'
    status.user = user
    status.save
  
    expect(status.user.handle).to eq('sam')
  end

  it 'user has followers' do

  end
  
  
  
end
