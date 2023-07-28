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


  it 'user can follow and be followed' do

    sam = User.create(handle: "sam")
    gabi = User.create(handle: "gabi")
    james = User.create(handle: "james")

    gabi_follows_sam = Connection.create(follower: gabi, followed: sam)
    james_follows_sam = Connection.create(follower: james, followed: sam)
    sam_follows_james = Connection.create(follower: sam, followed: james)

    sam.reload
    gabi.reload
    james.reload
    
    expect(sam.followers.length).to eq(2)
    expect(sam.followings.length).to eq(1)
  end
  
  
end
