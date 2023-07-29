require 'rails_helper'

RSpec.describe Status, type: :model do
  it 'status belongs to a user' do 
    sam = User.create(handle: "sam")
    status = Status.create(body: "Hi everybody",user: sam)
  
    expect(status.user.handle).to eq('sam')
  end

  it 'status has a response' do
    sam = User.create(handle: "sam")
    mari = User.create(handle: "mari")

    status = Status.create(body: "Hi everybody",user: sam)
    response1 = Status.create(body: "hi sam its mari", user: mari, in_response_to: status)

    expect(status.responses.length).to eq(1)
  end

  it 'status has more than one response' do
    sam = User.create(handle: "sam")
    gabi = User.create(handle: "gabi")
    mari = User.create(handle: "mari")
    status = Status.create(body: "Hi everybody",user: sam)

    response1 = Status.create(body: "hi sam its mari", user: mari, in_response_to: status)
    response2 = Status.create(body: "hi sam its gabi", user: gabi, in_response_to: status)
    

    expect(status.responses.length).to eq(2)
  end
end
